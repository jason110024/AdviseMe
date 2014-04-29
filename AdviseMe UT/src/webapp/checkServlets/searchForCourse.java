package webapp.checkServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.Course;
import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class searchForCourse extends HttpServlet{
	
	static{ObjectifyService.register(Course.class);}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String search = req.getParameter("courseQuery").toUpperCase();
		
		try{
			if(search==null||search.isEmpty()){
				resp.sendRedirect("coursesall.jsp");
			}
			
			if (search.charAt(0) == 'E' && search.charAt(2) == ' ' ){
				///this is the case that its in the form (E* *****), assumed to be (EE ###)
			
			resp.sendRedirect("courseinfo.jsp?courseName=" + search);
			}
			else if (search.substring(0,1).matches("[0-9]")){
				//first thing in query is course number. assumed to be (###)
				resp.sendRedirect("courseinfo.jsp?courseName=" + "EE " + search);
			}
			else if (search.charAt(0) == 'E' && search.substring(2,3).matches("[0-9]") ){
				//the case that query is in form of(E*#**), assumed to be (EE###)
				resp.sendRedirect("courseinfo.jsp?courseName=" + "EE " + search.substring(2));
			}
			else{
				List<Course> courses = ofy().load().type(Course.class).list();
				for(Course course: courses){
					String name = course.getTitle();
					if(name.toLowerCase().contains(search.toLowerCase())){
						resp.sendRedirect("courseinfo.jsp?courseName=" + course.getCourseName());
					}	
				}
				resp.sendRedirect("coursesall.jsp");
			}
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}

}
