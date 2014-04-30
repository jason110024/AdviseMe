package webapp.serviceServlets;

import java.io.IOException;
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
						+ "						                        <!--Left box-->"
						+ "						                        <table width=\"100%\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\"  class=\"deviceWidth\">"
						+ "						                            <tr>"
						+ "						                                <td  class=\"center\" style=\"font-size: 16px; color: #ffffff; font-weight: bold; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 50px 0px 0 20px; \">"
						+ "						                                    Thank you for sending your comments to the AdviseMe Team. A member of our team will get in touch with you within 48 hours.                  "      
						+ "						                                </td>"
						+ "						                            </tr>"
						+ "						                            <tr>"
						+ "						                                <td  class=\"center\" style=\"font-size: 14px; color: #ffffff; font-weight: bold; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px; \" >"
						+ "						                                     Here is a receipt of your message:"
						+ "						                        			 <br>"
						+ "						                        			 Name:  " + name 
						+ "						                        			 Email: " + email 
						+ "						                        			 Message: " + message 
						+ "						                                </td>"
						+ "						                            </tr>"
						+ "						                        </table><!--End Left box-->"
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
				//msg.setText("Thank you for sending your comments to the AdviseMe Team. A member of our team will get in touch with you within 48 hours. \n\nYour submission:\n\nName: " + name + "\n\nEmail: " + email + "\n\nMessage: " + message);
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
