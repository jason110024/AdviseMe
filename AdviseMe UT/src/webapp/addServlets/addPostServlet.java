package webapp.addServlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.Post;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class addPostServlet extends HttpServlet{
	static{ObjectifyService.register(Post.class);}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String userId = req.getParameter("id");
		String username = req.getParameter("username");
		String title = req.getParameter("forumtitle");
		String content = req.getParameter("forumcontent");
		String tags = req.getParameter("tags");
		ArrayList<String> tag = new ArrayList<String>(0);
		Post post;
		try{
			if(userId==null||userId.isEmpty()){
				throw new Exception("User Identification not sent!");
			}
			if(username==null||username.isEmpty()){
				throw new Exception("User Info not sent!");
			}
			if(title==null||title.isEmpty()){
				throw new Exception("Must provide a Title!");
			}
			if(content==null||content.isEmpty()){
				throw new Exception("Must provide a Content!");
			}
			if(tags==null||tags.isEmpty()){
				post=new Post(userId,username,title,content);
			}else{
				tag.add(tags);
				post = new Post(userId,username,title,content,tag);
			}
			ObjectifyService.ofy().save().entity(post).now();
			resp.sendRedirect("/forum.jsp");
		
		} catch (Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
