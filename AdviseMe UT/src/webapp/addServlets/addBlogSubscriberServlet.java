package webapp.addServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.Subscriber;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class addBlogSubscriberServlet extends HttpServlet{
	static{ObjectifyService.register(Subscriber.class);}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String email = req.getParameter("email");
		try{
			if(email==null||email.isEmpty()){
				throw new Exception("Email was invalid");
			}
			
			Subscriber temp = new Subscriber(email);
			ofy().save().entity(temp).now();
			resp.setContentType("text/plain");
			resp.setCharacterEncoding("UTF-8");
			resp.getWriter().write("true");
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
