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
		String search = req.getParameter("courseQuery");
		
		try{
			if(search==null||search.isEmpty()){
				throw new Exception("I mean you gotta type something in...");
			}
			
			List<Course> courses = ofy().load().type(Course.class).list();
			for(Course course: courses){/
				
			}
			if (search.charAt(0) == 'E' || search.charAt(0) == 'e' && search.charAt(2) == ' ' ){
				///this is the case that its in the form (E* *****), assumed to be (EE ###)
				String search2=search.toUpperCase();
			resp.sendRedirect("courseinfo.jsp?courseName=" + search2);
			}
			else if (search.substring(0,1).matches("[0-9]")){
				//first thing in query is course number. assumed to be (###)
				resp.sendRedirect("courseinfo.jsp?courseName=" + "EE " + search);
			}
//			else if (){
//				resp.sendRedirect("courseinfo.jsp?courseName=" + "EE " + search);
//			}
			else{
				resp.sendRedirect("courseinfo.jsp?courseName=" + "poop");
			}
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}

}
