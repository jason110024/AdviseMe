package webapp.addServlets;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.Course;
import webapp.datastoreObjects.CourseEdits;

import com.googlecode.objectify.ObjectifyService;
 
@SuppressWarnings("serial")
public class addCourseEdit extends HttpServlet{
	static{ObjectifyService.register(CourseEdits.class);}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String courseName = req.getParameter("coursename");
		String courseTitle = req.getParameter("coursetitle");
		String courseDescription = req.getParameter("coursedescription");
		String upperDivision = req.getParameter("division");
		String professorList = req.getParameter("professorList");
		String semesterTaught = req.getParameter("semestersTaught");
		String prereqs = req.getParameter("prereqs");
		try{
			if(courseName==null||courseName.isEmpty()){
				resp.sendRedirect("thankyou123.jsp");
				throw new Exception("Must provide a valid Course Name!");
			}
			if(courseTitle==null||courseTitle.isEmpty()){
				resp.sendRedirect("thankyou123.jsp");
				throw new Exception("Must provide a valid Course Title!");
			}
			if(courseDescription==null||courseDescription.isEmpty()){
				resp.sendRedirect("thankyou123.jsp");
				throw new Exception("Must provide a valid Course Description!");
			}
			if(upperDivision==null||upperDivision.isEmpty()){
				resp.sendRedirect("thankyou123.jsp");
				throw new Exception("Must select Upper/Lower Division!");
			}
			if(professorList==null||professorList.isEmpty()){
				resp.sendRedirect("thankyou123.jsp");
				throw new Exception("Must provide professors!");
			}
			if(semesterTaught==null||semesterTaught.isEmpty()){
				resp.sendRedirect("thankyou123.jsp");
				throw new Exception("Must provide semesters taught!");
			}
			if(prereqs==null||prereqs.isEmpty()){
				resp.sendRedirect("thankyou123.jsp");
				throw new Exception("Must provide Pre-requistites!");
			}			
		boolean upper;
			if(upperDivision.equals("upper")){
				upper = true;
				
			}else{
				upper=false;
			}
			String change = "Course Name: " +courseName + "\nCourse Title: "+courseTitle+"\nCourse Description: "
					+ courseDescription + "\nUpper Division?: " + upperDivision + "\nProfessor List: " +
					professorList + "\n Semesters Taught: " + semesterTaught + "\n Prereqs: " + prereqs;
			System.out.println("hi");
			System.out.println(change);
			System.out.println("hi2");
			CourseEdits course = new CourseEdits(courseName,courseTitle,courseDescription,upper);
			//TODO: Need to parse the list correctly and add the professors correctly
			course.getProfessorList().add(professorList);
			course.getSemesterTaught().add(semesterTaught);
			course.getPrereq().add(prereqs);
			ObjectifyService.ofy().save().entity(course).now();
			//Get old course
			ObjectifyService.register(Course.class);
			List<Course> list = ObjectifyService.ofy().load().type(Course.class).list();
			Iterator<Course> iter = list.iterator();
			while(iter.hasNext()){
				Course temp = iter.next();
				if(temp.getCourseName().equals(courseName)){
					change+="\n\n Old Course Info: \n" +"Course Name: " +temp.getCourseName() + "\nCourse Title: "+temp.getTitle()+"\nCourse Description: "
							+ temp.getDescription() + "\nUpper Division?: " + temp.getUpperDivision() + "\nProfessor List: " +
							temp.getProfessorList() + "\n Semesters Taught: " + temp.getSemesterTaught() + "\n Prereqs: " + temp.getPrereq();
					System.out.println(change);
				}
			}
			//sending email to admin about change.
			Properties props = new Properties();
			Session session = Session.getDefaultInstance(props,null);
			String address = "UTAdviseMe@gmail.com";
			Message msg = new MimeMessage(session);
			
			try{
				msg.setFrom(new InternetAddress("CourseChange@advisemeut.appspotmail.com", "AdviseMe Course Change"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(address));
				msg.setSubject("Edit for: "+courseName+" Requested");
				msg.setText(change);
				System.out.println("about to send email");
				Transport.send(msg);
			}catch(Exception e1){
				System.out.println("Was not able to send change to admin");
				resp.sendRedirect("thankyou12.jsp");
			}
			resp.sendRedirect("thankyou1.jsp");
			
		} catch (Exception e){
			resp.sendRedirect("thankyou1234.jsp");
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		doPost(req,resp);
	}
}
