package webapp.serviceServlets;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.Course;
import webapp.datastoreObjects.CourseEdits;

import com.googlecode.objectify.ObjectifyService;


public class emailServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		try{
			Properties props = new Properties();
			Session session = Session.getDefaultInstance(props, null);
			MimeMessage message = new MimeMessage(session, req.getInputStream());
			String recSubject = message.getSubject();
			String[] splitSubject = recSubject.split(" ");
			if(splitSubject.length==0||splitSubject.length==1){
				return;
			}
			ObjectifyService.register(CourseEdits.class);
			List<CourseEdits> list = ObjectifyService.ofy().load().type(CourseEdits.class).list();
			Iterator<CourseEdits> iter = list.iterator();
			if(splitSubject[0].equalsIgnoreCase("yes")){
				CourseEdits temp1 = null;
				while(iter.hasNext()){
					CourseEdits temp = iter.next();
					if(temp.getId()==Long.valueOf(splitSubject[1]).longValue()){
						temp1=temp;
						ObjectifyService.ofy().delete().entity(temp).now();
						break;
					}
				}
				ObjectifyService.register(Course.class);
				List<Course> courses = ObjectifyService.ofy().load().type(Course.class).list();
				Iterator<Course> iterator = courses.iterator();
				while(iterator.hasNext()){
					Course tempest = iterator.next();
					if(tempest.getCourseName().equals(temp1.getCourseName())){
						tempest.setDescription(temp1.getDescription());
						tempest.setPrereq(temp1.getPrereq());
						tempest.setProfessorList(temp1.getProfessorList());
						tempest.setSemesterTaught(temp1.getSemesterTaught());
						ObjectifyService.ofy().save().entity(tempest).now();
						break;
					}
				}
				//need to make changes to course
			}else if(splitSubject[0].equalsIgnoreCase("no")){
				//need to delete courseedit from datastore
				while(iter.hasNext()){
					CourseEdits temp = iter.next();
					if(temp.getId()==Long.valueOf(splitSubject[1]).longValue()){
						ObjectifyService.ofy().delete().entity(temp).now();
						break;
					}
				}
			}
		}catch(Exception e){
			System.out.println("Something even more stupid happened.");
		}
	}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		doPost(req,resp);
	}
}
