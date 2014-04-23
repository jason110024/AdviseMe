package webapp.datastoreObjects;

import java.util.ArrayList;
import java.util.HashMap;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Index
@Entity
public class Course implements Comparable<Course> {
	@Id String courseName ="No course name entered.";
	private String title = "No course title entered.";
	private String description= "Default UT description";
	private Boolean upperDivision; 	//true if upper division; false if lower division
	private ArrayList<String> professorList;
	private ArrayList<String> semestersTaught;
	private ArrayList<String> subscribers;
	private ArrayList<String> prereqs;
	private ArrayList<String> userTaken;
	private String evalLink;
	private String syllabiLink;
	private Integer numDiffRating; 
	private HashMap<String,Double> diffRatings;
	private Double diffAvg=0.0;
	private Integer numWorkRating;
	private HashMap<String,Double> workRatings;
	private Double workAvg=0.0;
		
	@SuppressWarnings("unused")
	private Course(){}

	public Course(String courseName){
		this.diffRatings = new HashMap<String,Double>();
		this.diffRatings.put("default", 0.0);
		this.workRatings = new HashMap<String,Double>();
		this.workRatings.put("default", 0.0);
		this.courseName=courseName;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.subscribers = new ArrayList<String>();
		this.prereqs = new ArrayList<String>();
		this.userTaken = new ArrayList<String>();
		this.numDiffRating=0;
		String[] parse = courseName.split(" ");
		if(parse.length>=2){
			if(parse[0].equalsIgnoreCase("EE")){
				this.evalLink = "https://utdirect.utexas.edu/ctl/ecis/results/"
						+ "search.WBX?s_in_search_type_sw=C&s_in_max_nbr_return"
						+ "=10&s_in_search_course_dept=E+E&s_in_search_course_num=" + parse[1];
				this.syllabiLink = "https://utdirect.utexas.edu/apps/student/"
						+ "coursedocs/nlogon/?semester=&department=E+E&course"
						+ "_number=" + parse[1]
						+ "&course_title=&unique=&instructor_first="
						+ "&instructor_last=&course_type=In+Residence&search=Search";
			}
		}
	}
	
	public Course(String courseName, String title){
		this.diffRatings = new HashMap<String,Double>();
		this.diffRatings.put("default", 0.0);
		this.workRatings = new HashMap<String,Double>();
		this.workRatings.put("default", 0.0);
		this.courseName=courseName;
		this.title=title;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.subscribers = new ArrayList<String>();
		this.prereqs = new ArrayList<String>();
		this.userTaken = new ArrayList<String>();
		this.numDiffRating=0;
		String[] parse = courseName.split(" ");
		if(parse.length>=2){
			if(parse[0].equalsIgnoreCase("EE")){
				this.evalLink = "https://utdirect.utexas.edu/ctl/ecis/results/"
						+ "search.WBX?s_in_search_type_sw=C&s_in_max_nbr_return"
						+ "=10&s_in_search_course_dept=E+E&s_in_search_course_num=" + parse[1];
				this.syllabiLink = "https://utdirect.utexas.edu/apps/student/"
						+ "coursedocs/nlogon/?semester=&department=E+E&course"
						+ "_number=" + parse[1]
						+ "&course_title=&unique=&instructor_first="
						+ "&instructor_last=&course_type=In+Residence&search=Search";
			}
		}
	}
	
	public Course(String courseName, String title, String description,boolean upperDiv){
		this.diffRatings = new HashMap<String,Double>();
		this.diffRatings.put("default", 0.0);
		this.workRatings = new HashMap<String,Double>();
		this.workRatings.put("default", 0.0);
		this.courseName=courseName;
		this.title=title;
		this.description=description;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.subscribers = new ArrayList<String>();
		this.prereqs = new ArrayList<String>();
		this.userTaken = new ArrayList<String>();
		this.upperDivision = upperDiv;
		this.numDiffRating=0;
		this.numWorkRating=0;
		String[] parse = courseName.split(" ");
		if(parse.length>=2){
			if(parse[0].equalsIgnoreCase("EE")){
				this.evalLink = "https://utdirect.utexas.edu/ctl/ecis/results/"
						+ "search.WBX?s_in_search_type_sw=C&s_in_max_nbr_return"
						+ "=10&s_in_search_course_dept=E+E&s_in_search_course_num=" + parse[1];
				this.syllabiLink = "https://utdirect.utexas.edu/apps/student/"
						+ "coursedocs/nlogon/?semester=&department=E+E&course"
						+ "_number=" + parse[1]
						+ "&course_title=&unique=&instructor_first="
						+ "&instructor_last=&course_type=In+Residence&search=Search";
			}	
		}
	}
	
	public String getCourseName(){
		return this.courseName;
	}
	
	public String getTitle(){
		return this.title;
	}
	
	public String getDescription(){
		return this.description;
	}
	
	public void setDescription(String des){
		this.description=des;
	}

	public boolean getUpperDivision() {
		return this.upperDivision;
	}

	public void setUpperDivision(boolean upperDivision) {
		this.upperDivision = upperDivision;
	}

	public void addSubscriber(String email){
		this.subscribers.add(email);
	}
	
	public ArrayList<String> getProfessorList(){
		return this.professorList;
	}
	
	public void setProfessorList(ArrayList<String> test){
		this.professorList=test;
	}
	
	public ArrayList<String> getSemesterTaught(){
		return this.semestersTaught;
	}
	
	public void setSemesterTaught(ArrayList<String> test){
		this.semestersTaught=test;
	}
	
	public ArrayList<String> getSubscribers(){
		return this.subscribers;
	}
	
	public ArrayList<String> getPrereq(){
		return this.prereqs;
	}
	
	public void setPrereq(ArrayList<String> test){
		this.prereqs=test;
	}
	
	public ArrayList<String> getUserTaken(){
		return this.userTaken;
	}
	
	public String getSyllabusLink(){
		return this.syllabiLink;
	}
	
	public String getEvalLink(){
		return this.evalLink;
	}
	
	public void setUserTaken(ArrayList<String> userTaken){
		this.userTaken=userTaken;
	}
	
	public void setSubscribers(ArrayList<String> subscribers){
		this.subscribers=subscribers;
	}
	
	@Override
	public int compareTo(Course o) {
		return this.getCourseName().compareTo(o.getCourseName());
	}
		
	public Integer getNumDiffRating(){
		return this.numDiffRating;
	}
	
	public Integer getNumWorkRating(){
		return this.numWorkRating;
	}
	
	public void processDiffRating(Double rating, String fbID){
		if(this.diffRatings.containsKey(fbID)&&(this.diffRatings.get(fbID)!=rating)){
			int userCount = this.numDiffRating;
			Double temp = userCount*this.diffAvg;
			this.diffAvg=(temp-this.diffRatings.get(fbID)+rating)/(userCount);
			this.diffRatings.put(fbID, rating);
			return;
		}else if(this.diffRatings.containsKey(fbID)&&(this.diffRatings.get(fbID)==rating)){
			return;
		}else{
			this.diffRatings.put(fbID, rating);
		}
		if(diffAvg==0.0){
			this.diffAvg=rating;
			this.numDiffRating=1;
		}else{
			int userCount = this.numDiffRating;
			Double temp = userCount*this.diffAvg;
			temp+=rating;
			this.numDiffRating+=1;
			this.diffAvg=temp/this.numDiffRating;	
		}
	}
	
	public void processWorkRating(Double rating, String fbID){
		if(this.workRatings.containsKey(fbID)&&(this.workRatings.get(fbID)!=rating)){
			int userCount = this.numWorkRating;
			Double temp = userCount*this.workAvg;
			this.workAvg=(temp-this.workRatings.get(fbID)+rating)/(userCount);
			this.workRatings.put(fbID, rating);
			return;
		}else if(this.workRatings.containsKey(fbID)&&(this.workRatings.get(fbID)==rating)){
			return;
		}else{
			this.workRatings.put(fbID, rating);
		}
		if(workAvg==0.0){
			this.workAvg=rating;
			this.numWorkRating=1;
		}else{
			int userCount = this.numWorkRating;
			Double temp = userCount*this.workAvg;
			temp+=rating;
			this.numWorkRating+=1;
			this.workAvg=temp/this.numWorkRating;	
		}
	}
	
	public Double getDiffAvg() {
		return this.diffAvg;
	}
	
	public Double getWorkAvg() {
		return this.workAvg;
	}
	
	public void resetDiffRating(){
		if(this.diffRatings!=null){
			this.diffRatings.clear();
			this.diffAvg = 0.0;
			this.numDiffRating=0;
			System.out.println(diffRatings.size());
			this.diffRatings.put("default", 0.0);
		}
	}
	
	public void resetWorkRating(){
		if(this.workRatings!=null){
			this.workRatings.clear();
			this.workAvg = 0.0;
			this.numWorkRating=0;
			System.out.println(workRatings.size());
			this.workRatings.put("default", 0.0);
		}
	}
}
