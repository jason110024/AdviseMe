package webapp.serviceServlets;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class contactUsServlet extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String message = req.getParameter("message");
		try{
			if(name==null||name.isEmpty()){
				throw new Exception("Must provide a name!");
			}
			if(email==null||email.isEmpty()){
				throw new Exception("Must provide an email!");
			}
			if(message==null||message.isEmpty()){
				throw new Exception("Must provide a message!");
			}
			Properties props = new Properties();
			Session session = Session.getDefaultInstance(props,null);
			String address = "UTAdviseMe@gmail.com";
			Message msg = new MimeMessage(session);
			try{
				msg.setFrom(new InternetAddress("ContactUs@advisemeut.appspotmail.com", "AdviseMe Contact Us"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(address));
				msg.setSubject("Contact Us Submission");
				msg.setText("Name: " + name + "\n\nEmail: " + email + "\n\nMessage: " + message);
				Transport.send(msg);
				msg=new MimeMessage(session);
				msg.setFrom(new InternetAddress("ContactUs@advisemeut.appspotmail.com", "AdviseMe Contact Us"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
				msg.setSubject("Contact Us Submission");
				msg.setText("Thank you for sending your comments to the AdviseMe Team. A member of our team will get in touch with you within 48 hours. \n\nYour submission:\n\nName: " + name + "\n\nEmail: " + email + "\n\nMessage: " + message);
				Transport.send(msg);
			}catch(Exception e1){
				System.out.println("Was not able to send change to admin");
			}
			resp.sendRedirect("home.jsp");
		}catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
