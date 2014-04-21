package webapp.datastoreObjects;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Post implements Comparable<Post> {
	@Id Long id;
	
	String title;
	String content;
	Date date;
	
	public Post(){
		
	}
	public Post(User user, String title, String content){
		this.user=user;
		this.title=title;
		this.content=content;
		date=new Date();
	}
	public User getUser(){
		return user;
	}
	public String getTitle(){
		return title;
	}
	public String getContent(){
		return content;
	}
	public String getDate(){
		SimpleDateFormat dateFormat = new SimpleDateFormat ("E, MMMM d yyyy 'at' h:mm:ss aaa");
		dateFormat.setTimeZone(TimeZone.getTimeZone("CST"));
		String dateToString=dateFormat.format(date);
		return dateToString;
	}
	public Date getRealDate(){
		return date;
	}

	@Override
	public int compareTo(Post other){
		if(date.after(other.date)){
			return -1;
		}else if(date.before(other.date)){
			return 1;
		}
		return 0;
	}
}
