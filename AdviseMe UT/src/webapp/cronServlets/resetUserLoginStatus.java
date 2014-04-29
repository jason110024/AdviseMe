package webapp.cronServlets;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.datastoreObjects.User;

import com.googlecode.objectify.ObjectifyService;

@SuppressWarnings("serial")
public class resetUserLoginStatus extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		ObjectifyService.register(User.class);
		List<User> users = ObjectifyService.ofy().load().type(User.class).list();
		if(users.isEmpty()){
			System.out.println("User list was empty at Cron Time");
			return;
		}
		Iterator<User> iterator = users.iterator();
		while(iterator.hasNext()){
			User user = iterator.next();
			if(user.getLoginStatus()){
				Date current = new Date();
				Date temp = user.getLoginDate();
				long diff = current.getTime() - temp.getTime();
				long diffHours = diff / (60 * 60 * 1000) % 24;
				long diffDays = diff / (24 * 60 * 60 * 1000);
				long diffSeconds = diff / 1000 % 60;
				long diffMinutes = diff / (60 * 1000) % 60;
				if(diffHours>=1){
					System.out.println("User: " + user.getfbUserId() + " has been auto-logged out.");
					System.out.println("The user was inactive for: " + 
							diffDays + " day(s), " + diffHours + " hour(s), " + 
							diffMinutes + " minute(s), " + diffSeconds + "second(s).");
					user.setLoginStatus(false);
					ofy().save().entity(user).now();
				}
			}
		}
	}
}
