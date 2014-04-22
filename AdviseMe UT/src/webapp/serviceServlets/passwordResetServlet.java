package webapp.serviceServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.PasswordReset;
import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class passwordResetServlet extends HttpServlet{
	static{ObjectifyService.register(PasswordReset.class);}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String key = req.getParameter("key");
		String password = req.getParameter("password");
		try{
			if(key==null||key.isEmpty()){
				throw new Exception("Invalid key. Please use the password reset tool to reset your password.");
			}
			if(password==null||password.isEmpty()){
				throw new Exception("Please enter a password");
			}
			List<PasswordReset> passwords = ofy().load().type(PasswordReset.class).list();
			for(PasswordReset passwordss : passwords){
				if(passwordss.getKey().equals(key)){
					ObjectifyService.register(User.class);
					List<User> user = ofy().load().type(User.class).list();
					for(User users: user){
						if(users.getfbUserId().equals(passwordss.getUserId())){
							users.changePassword(password);
						}
					}
				}else{
					throw new Exception("Error when resetting password");
				}
			}
		}catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
