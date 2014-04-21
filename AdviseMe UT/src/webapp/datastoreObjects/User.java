package webapp.datastoreObjects;

import java.util.ArrayList;
import java.util.Date;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;



@Index
@Entity
public class User implements Comparable<User>{
	@Id String id = null;
	String firstName = "No first name entered.";
	String lastName = "No last name entered.";
	String userEmail = null;
	Boolean loginStatus = false;
	ArrayList<String> courseList;
	ArrayList<String> fbFriends;
	Date loginDate;
	
	@SuppressWarnings("unused")
	private User(){
		courseList = new ArrayList<String>();
	}
	
	public User(String firstName, String lastName, String email){
		Integer temp =firstName.hashCode() + lastName.hashCode();
		temp=(temp/2)*(int)Math.round(Math.random()*13);
		this.id=temp.toString();
		this.firstName=firstName;
		this.lastName=lastName;
		this.userEmail=email;
		this.loginStatus = false;
		this.loginDate = new Date();
		courseList = new ArrayList<String>();
	}

	
	public User(String fbUserId, String firstName, String lastName, String userEmail){
		this.id=fbUserId;
		this.firstName=firstName;
		this.lastName=lastName;
		this.userEmail=userEmail;
		this.loginStatus=false;
		this.loginDate = new Date();
		courseList = new ArrayList<String>();
	}
	
	public ArrayList<String> getUserClassList(){
		return courseList;
	}
	
	public void addUserClass(String course){
		this.courseList.add(course);
	}
	
	public String getfbUserId(){
		return this.id;
	}
	
	public void addfbUserId(String fbID){
		this.id=fbID;
	}
	
	public String getFullName(){
		return this.firstName + " " + this.lastName;
	}
	
	public String getLastName(){
		return this.lastName;
	}

	public String getFirstName(){
		return this.firstName;
	}
	
	public String getUserEmail(){
		return this.userEmail;
	}
	
	public Boolean getLoginStatus(){
		return loginStatus;
	}
	
	public void setLoginStatus(boolean status){
		this.loginStatus=status;
	}
	
	public void resetLoginDate(){
		this.loginDate = new Date();
	}
	
	public Date getLoginDate(){
		return this.loginDate;
	}
	
	@Override
	public int compareTo(User o) {
		return o.getLastName().compareTo(this.getLastName());
	}
}
