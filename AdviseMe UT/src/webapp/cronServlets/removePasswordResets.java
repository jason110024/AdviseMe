package webapp.cronServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.PasswordReset;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class removePasswordResets extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		ObjectifyService.register(PasswordReset.class);
		List<PasswordReset> stuff = ofy().load().type(PasswordReset.class).list();
		if(stuff.isEmpty()){
			System.out.println("Password Reset list was empty at Cron Time.");
			return;
		}
/*		Iterator<PasswordReset> iterator = stuff.iterator();
		SimpleDateFormat test = new SimpleDateFormat("MM-dd-yyyy");
		while(iterator.hasNext()){
			PasswordReset temp = iterator.next();
			if(temp.)
		}
*/
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		doGet(req,resp);
	}

}
