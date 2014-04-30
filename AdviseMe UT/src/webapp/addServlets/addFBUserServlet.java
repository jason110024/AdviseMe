package webapp.addServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;
import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class addFBUserServlet extends HttpServlet {
	static {
		ObjectifyService.register(User.class);
	}

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

				ofy().save().entity(user).now();
				User temp = ofy().load().entity(user).get();
				FBId=temp.getfbUserId();
				HttpSession session = req.getSession(true);
				session.setAttribute("first", FBFirst);
				session.setAttribute("last", FBLast);
				session.setAttribute("id", FBId);
				session.setAttribute("isLoggedIn", "true");
				Properties props = new Properties();
				Session session1 = Session.getDefaultInstance(props,null);
				Message msg = new MimeMessage(session1);
				String htmlBody = "<!doctype html>"
						+ "				<html xmlns=\"http://www.w3.org/1999/xhtml\">"
						+ "				<head>"
						+ "				<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />"
						+ "				<title>Responsive Email Template</title>"                                                                                                                                                                                                                                                                                                                                                                                                   
						+ "				<style type=\"text/css\">"
						+ "				    .ReadMsgBody {width: 100%; background-color: #ffffff;}"
						+ "				    .ExternalClass {width: 100%; background-color: #ffffff;}"
						+ "				    body     {width: 100%; background-color: #ffffff; margin:0; padding:0; -webkit-font-smoothing: antialiased;font-family: Arial, Helvetica, sans-serif}"
						+ "				    table {border-collapse: collapse;}"
						+ "				    @media only screen and (max-width: 640px)  {"
						+ "				                    body[yahoo] .deviceWidth {width:440px!important; padding:0;}"    
						+ "				                    body[yahoo] .center {text-align: center!important;}  "
						+ "				            }"
						+ "				    @media only screen and (max-width: 479px) {"
						+ "				                    body[yahoo] .deviceWidth {width:280px!important; padding:0;}"    
						+ "				                    body[yahoo] .center {text-align: center!important;}  "
						+ "				            }"
						+ "				</style>"
						+ "				</head>"
						+ "				<body leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\" yahoo=\"\fix\" style=\"font-family: Arial, Helvetica, sans-serif\">"
						+ "				<!-- Wrapper -->"
						+ "				<table width=\"100%\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\">"
						+ "				    <tr>"
						+ "				        <td width=\"100%\" valign=\"top\">"				
						+ "				         <!--Start Header-->"
						+ "				            <table width=\"700\" bgcolor=\"#fff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" class=\"deviceWidth\">"
						+ "				                <tr>"
						+ "				                    <td style=\"padding: 6px 0px 0px\">"
						+ "				                        <table width=\"650\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" class=\"deviceWidth\">"
						+ "				                            <tr>"
						+ "				                                <td width=\"100%\" >"
						+ "				                                    <!--Start logo-->"
						+ "				                                    <table  border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"left\" class=\"deviceWidth\">"
						+ "				                                        <tr>"
						+ "				                                            <td class=\"center\" style=\"padding: 20px 0px 10px 0px\">"
						+ "				                                                <a href=\"http://advisemeut.appspot.com/\"><img src=\"http://advisemeut.appspot.com/assets/img/logo1-default.png\"></a>"
						+ "				                                            </td>"
						+ "				                                        </tr>"
						+ "				                                    </table><!--End logo-->"
						+ "				                                </td>"
						+ "				                            </tr>"
						+ "				                        </table>"
						+ "				                   </td>"
						+ "				                </tr>"
						+ "				            </table> "
						+ "				        <!--End Header-->"
						+ "				        <!--Start Top Block-->"
						+ "				            <table width=\"100%\" bgcolor=\"#e67e22\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" class=\"deviceWidth\">"
						+ "				                <tr>"
						+ "				                    <td>"
						+ "				                        <table width=\"700\" bgcolor=\"#e67e22\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" class=\"deviceWidth\">"
						+ "				                            <tr>"
						+ "				                                <td width=\"100%\">"
						+ "				                                    <!--Left box-->"
						+ "				                                    <table width=\"100%\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\"  class=\"deviceWidth\">"
						+ "				                                        <tr>"
						+ "				                                            <td  class=\"center\" style=\"font-size: 16px; color: #ffffff; font-weight: bold; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 50px 0px 0 20px; \">"
						+ "				                                                Thank you for joining AdviseMe!  "                          
						+ "				                                            </td>"
						+ "				                                        </tr>"
						+ "				                                        <tr>"
						+ "				                                            <td  class=\"center\" style=\"font-size: 14px; color: #ffffff; font-weight: bold; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px; \" >"
						+ "				                                                 Now you can help other users with their registration questions! Please feel free to add courses that you have taken, rate a course, edit a course description, or more! "
						+ "				                                            </td>"
						+ "				                                        </tr>"
						+ "				                                        <tr>"
						+ "				                                            <td  class=\"center\" style=\"font-size: 12px; color: #ffffff; font-weight: bold; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 20px; vertical-align: middle; padding: 50px 10px 0; \">"
						+ "				                                                 Stay Connected With AdviseMe!    "                         
						+ "				                                            </td>"
						+ "				                                        </tr>"
						+ "				                                        <tr>"
						+ "				                                        	<td  class=\"center\" style=\"font-size: 12px; color: #ffffff; font-weight: bold; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 20px; vertical-align: middle; padding: 20px; \">"
						+ "				                                            <button class=\"btn-u btn-u-blue\" type=\"button\" onclick=\"window.location.href='http://jasona-ee461l-webappblog.appspot.com/''\">Blog</button>"
						+ "				                                            <button class=\"btn-u btn-u-blue\" type=\"button\" onclick=\"window.location.href='https://twitter.com/AdviseMeUT'\">Twitter</button>"
						+ "				                                            <button class=\"btn-u btn-u-blue\" type=\"button\" onclick=\"window.location.href='https://www.youtube.com/channel/UCTE-dQdEBZQpOIphPIec_Og'\">YouTube</button>"
						+ "				                                       		</td>"
						+ "				                                        </tr>"
						+ "				                                    </table><!--End Left box-->"
						+ "				                                    <!-- Right box  -->"
						+ "				                                </td>"
						+ "				                            </tr>"
						+ "				                        </table>"
						+ "				                    </td>"
						+ "				                </tr>"
						+ "				            </table>"
						+ "				        <!--End Top Block-->"
						+ "				        <!-- Footer -->"
						+ "				            <table width=\"700\" bgcolor=\"#fff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" class=\"deviceWidth\">"
						+ "				                <tr>"
						+ "				                    <td>"
						+ "				                        <table width=\"700\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" class=\"deviceWidth\">"
						+ "				                            <tr>"
						+ "				                                <td class=\"center\" style=\"font-size: 12px; color: #687074; font-weight: bold; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 20px; vertical-align: middle; padding: 10px 50px 30px; \" >"
						+ "				                                    2014 &copy; AdviseMe. ALL Rights Reserved.   "                         
						+ "				                                </td>"
						+ "				                            </tr>"
						+ "				                        </table>"
						+ "				                    </td>"
						+ "				                </tr>"
						+ "				            </table>"
						+ "				         <!--End Footer-->"
						+ "				         <div style=\"height:15px\">&nbsp;</div><!-- divider -->"
						+ "				        </td>"
						+ "				    </tr>"
						+ "				</table> "
						+ "				<!-- End Wrapper -->"
						+ "				</body>"
						+ "				</html>";
				Multipart mp = new MimeMultipart();
				MimeBodyPart htmlPart = new MimeBodyPart();
				htmlPart.setContent(htmlBody, "text/html");
				mp.addBodyPart(htmlPart);
				msg.setContent(mp);
				msg.setSubject("Welcome to AdviseMe!");
				try{
					msg.setFrom(new InternetAddress("no-reply@advisemeut.appspotmail.com", "Welcome to Advise Me!"));
					msg.addRecipient(Message.RecipientType.TO, new InternetAddress(FBEmail));
					Transport.send(msg);
				}catch(Exception e){
					System.out.println("Was not able to send change to admin");
				}finally{
					resp.sendRedirect("/addusercourses.jsp?id="+FBId);
				}
			}
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
