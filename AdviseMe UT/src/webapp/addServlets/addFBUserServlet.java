package webapp.addServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;
import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class addFBUserServlet extends HttpServlet{
	static{ObjectifyService.register(User.class);}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String FBId = req.getParameter("id");
		String FBFirst = req.getParameter("firstname");
		String FBLast = req.getParameter("lastname");
		String FBEmail = req.getParameter("email");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String remoteAddr = req.getRemoteAddr();
		String challenge = req.getParameter("recaptcha_challenge_field");
		String response = req.getParameter("recaptcha_response_field");
		try{
			ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
			reCaptcha.setPrivateKey("6LfFIe8SAAAAADGueFM28Toq3H3OJWqB2xTpoj-A");
			ReCaptchaResponse reCaptchaReponse = reCaptcha.checkAnswer(remoteAddr, challenge, response);
			if(!reCaptchaReponse.isValid()){
				resp.sendRedirect("createaccount.jsp?error=captcha");
			}else{
				User user;
				if(FBFirst==null||FBFirst.isEmpty()){
					throw new Exception("Must enter a first name");
				}
				if(FBLast==null||FBLast.isEmpty()){
					throw new Exception("Must enter a last name.");
				}
				if(FBEmail==null||FBEmail.isEmpty()){
					throw new Exception("Must enter an email.");
				}
				if(password==null||password.isEmpty()){
					throw new Exception("Must enter a password.");
				}
				if(username==null||username.isEmpty()){
					throw new Exception("Must enter a username.");
				}
				List<User> userList = ObjectifyService.ofy().load().type(User.class).list();
				for(User users: userList){
					if(users.getUsername().equals(username)){
						resp.sendRedirect("createaccount.jsp?error=user");
					}
					if(users.getUserEmail().equals(FBEmail)){
						resp.sendRedirect("createaccount.jsp?error=email");
					}
				}
				if(FBId==null||FBId.isEmpty()){
					user = new User(FBFirst,FBLast,FBEmail,username,password);
					user.setLoginStatus(true);
				}else{
					user = new User(FBId,FBFirst,FBLast,FBEmail,username,password);
					user.setLoginStatus(true);
				}
				HttpSession session = req.getSession(true);
				session.setAttribute("first", FBFirst);
				session.setAttribute("last", FBLast);
				session.setAttribute("id", FBId);
				session.setAttribute("isLoggedIn", "true");
				ofy().save().entity(user).now();
				resp.sendRedirect("/addusercourses.jsp?id="+FBId);
			}
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
