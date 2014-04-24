package webapp.checkServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class changeLoginFalse extends HttpServlet {
	static{ObjectifyService.register(User.class);}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String id = req.getParameter("id");
		HttpSession session = req.getSession(false);
		try{
			if(id==null||id.isEmpty()){
				throw new Exception("User Id was not passed correctly. Please Try again");
			}
			List<User> users = ofy().load().type(User.class).list();
			boolean flag = false;
			for(User user: users){
				if(user.getfbUserId().equals(id)){
					Boolean status = user.getLoginStatus();
					if(status){
						user.setLoginStatus(false);
						System.out.println("User: "+ id +" has logged out.");
						session.setAttribute("isLoggedIn", "false");
						ofy().save().entity(user).now();
					}
					flag = true;
					break;
				}
			}
			if(!flag){
				throw new Exception("User account not found in database.");
			}
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/createsessionservlet?id="+id);
			rd.forward(req, resp);
		} catch(Exception e){
			String logMsg = "Exception in processing request: " + e.getMessage();
			throw new IOException(logMsg);
		}
	}
}
