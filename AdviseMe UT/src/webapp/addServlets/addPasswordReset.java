package webapp.addServlets;

import java.io.IOException;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.PasswordReset;
import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class addPasswordReset extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String email = req.getParameter("email");
		long range = 1234567L;
		Random r = new Random();
		PasswordReset temp;
		boolean flag=false;
		long number = (long)(r.nextDouble()*range);
		try{
			if(email==null||email.isEmpty()){
				throw new Exception("Email required!");
			}
			ObjectifyService.register(User.class);
			List<User> user = ObjectifyService.ofy().load().type(User.class).list();
			for(User users: user){
				if(users.getUserEmail().equals(email)){
					ObjectifyService.register(PasswordReset.class);
					temp = new PasswordReset(number, users.getfbUserId());
					ObjectifyService.ofy().save().entity(temp).now();
					flag = true;
					break;
				}
			}
			if(flag){
				Properties props = new Properties();
				Session session = Session.getDefaultInstance(props,null);
				Message msg = new MimeMessage(session);
				try{
					msg.setFrom(new InternetAddress("PasswordReset@advisemeut.appspotmail.com", "AdviseMe Password Reset"));
					msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
					msg.setSubject("Password Reset");
					msg.setText("You have submitted a request for a password reset. (If you have recieved this message in error, please visit advisemeut.appspot.com/contact.jsp ASAP.\n\n"
							+ "Go to http://advisemeut.appspot.com/resetpassword.jsp?key="+number); //NEED TO MAKE TEXT INCLUDE LINK TO PAGE WITH SPECIAL NUMBER.
					Transport.send(msg);
				}catch(Exception e1){
					System.out.println("Was not able to send change to admin");
				}
				resp.sendRedirect("home.jsp");
			}else{
				resp.sendRedirect("requestpasswordreset.jsp?error=true");
			}
		}catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
