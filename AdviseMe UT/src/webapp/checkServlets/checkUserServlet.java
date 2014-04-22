package webapp.checkServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class checkUserServlet extends HttpServlet{
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
			boolean flag = false;
			String id=null; 
			for(User user: users){
				if(user.getUsername().equals(username)){
					System.out.println("User: " + username + " is an AdviseMe user.");
					boolean match = user.authenticate(password);
					if(match){
						//user provided authentic credentials
						id=user.getfbUserId();
						System.out.println("User: " + username + " provided the correct password.");
						flag=true;
						break;
					}else{
						//wrong password

						System.out.println("User: " + username + " did not provide the correct password.");
						flag=true;
						break;
					}
				}
			}
			//if code reaches here, then user has not registered before.
			//if code reacher here, return false
			if(!flag){
				System.out.println("Facebook ID: " + username + " is not an AdviseMe user.");
			}
			if(id==null||id.isEmpty()||id.equals("")){
				resp.sendRedirect("login.jsp?error=true");
			}
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/changeloginstatus?id="+id);
			rd.forward(req, resp);
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
