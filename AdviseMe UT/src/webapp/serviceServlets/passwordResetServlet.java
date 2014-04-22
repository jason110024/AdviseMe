package webapp.serviceServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class passwordResetServlet extends HttpServlet{
	static{ObjectifyService.register(User.class);}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		try{
			if(username==null||username.isEmpty()){
				throw new Exception("Please enter a username");
			}
			if(password==null||password.isEmpty()){
				throw new Exception("Please enter a password");
			}
			List<User> users = ofy().load().type(User.class).list();
			for(User user: users){
				if(user.getUsername().equals(username)){
					if(user.changePassword(password)){
						ofy().save().entity(user).now();
						resp.sendRedirect("/home.jsp");
					}else{
						throw new Exception("Error when resetting password");
					}
				}
			}
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
