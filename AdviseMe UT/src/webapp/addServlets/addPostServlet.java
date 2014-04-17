package webapp.addServlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.Post;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class addPostServlet extends HttpServlet{
	static{ObjectifyService.register(Post.class);}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		
		
		try{
		
			
			resp.sendRedirect("/home.jsp");
		
		} catch (Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
