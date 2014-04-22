package webapp.datastoreObjects;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Post implements Comparable<Post> {
	@Id private Long id;
	private String userId;
//	private String userFullName;
	private String title;
	private String content;
	private ArrayList<String> tags = new ArrayList<String>(0);
	private Date date;
	
	public Post(){}
	
	public Post(String userId, String title, String content){
		this.userId=userId;
//		this.userFullName=userFullName;
		this.title=title;
		this.content=content;
		this.date=new Date();
	}
	
	public Post(String id, String title, String content, ArrayList<String> tags){
		this.userId=id;
//		this.userFullName=name;
		this.title=title;
		this.content=content;
		this.tags=tags;
		this.date=new Date();	
	}
	
	public String getUserId(){
		return this.userId;
	}
	
//	public String getUserName(){
//		return this.userFullName;
//	}
	
	public String getTitle(){
		return this.title;
	}
	
	public String getContent(){
		return this.content;
	}
	
	public ArrayList<String> getTags(){
		return this.tags;
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
