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
	private Integer numRating; 
	private HashMap<String,Double> ratings;
	private Double avg=0.0;
	private Integer numWorkload;
	private HashMap<String,Double> workload;
	private Double work=0.0;
	private Integer numUseful;
	private HashMap<String,Double> useful;
	private Double use=0.0;
	
		
	@SuppressWarnings("unused")
	private Course(){}

	public Course(String courseName){
		this.ratings = new HashMap<String,Double>();
		this.workload = new HashMap<String,Double>();
		this.useful = new HashMap<String,Double>();
		this.ratings.put("default", 0.0);
		this.workload.put("default", 0.0);
		this.useful.put("default",0.0);
		this.numRating=0;
		this.numUseful=0;
		this.numWorkload=0;
		this.courseName=courseName;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.subscribers = new ArrayList<String>();
		this.prereqs = new ArrayList<String>();
		this.userTaken = new ArrayList<String>();
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
		this.ratings = new HashMap<String,Double>();
		this.workload = new HashMap<String,Double>();
		this.useful = new HashMap<String,Double>();
		this.ratings.put("default", 0.0);
		this.workload.put("default", 0.0);
		this.useful.put("default",0.0);
		this.numRating=0;
		this.numUseful=0;
		this.numWorkload=0;
		this.courseName=courseName;
		this.title=title;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.subscribers = new ArrayList<String>();
		this.prereqs = new ArrayList<String>();
		this.userTaken = new ArrayList<String>();
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
		this.ratings = new HashMap<String,Double>();
		this.workload = new HashMap<String,Double>();
		this.useful = new HashMap<String,Double>();
		this.ratings.put("default", 0.0);
		this.workload.put("default", 0.0);
		this.useful.put("default",0.0);
		this.numRating=0;
		this.numUseful=0;
		this.numWorkload=0;
		this.courseName=courseName;
		this.title=title;
		this.description=description;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.subscribers = new ArrayList<String>();
		this.prereqs = new ArrayList<String>();
		this.userTaken = new ArrayList<String>();
		this.upperDivision = upperDiv;
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
	
	public String getProfessorList(Boolean val){		//
		StringBuilder profs = new StringBuilder();
		int size = professorList.size();
		for(int i=0;i<size;i++){
			if(i==size-1){
				profs.append(professorList.get(i));
			}
			else profs.append(professorList.get(i) + ", ");
		}
		return profs.toString();
	}
	
	public void setProfessorList(ArrayList<String> test){
		this.professorList=test;
	}
	
	public ArrayList<String> getSemesterTaught(){
		return this.semestersTaught;
	}
	
	public String getSemesterTaught(Boolean val){		//
		StringBuilder sems = new StringBuilder();
		int size = semestersTaught.size();
		for(int i=0;i<size;i++){
			if(i==size-1){
				sems.append(semestersTaught.get(i));
			}
			else sems.append(semestersTaught.get(i) + ", ");
		}
		return sems.toString();
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
	
	public String getPrereq(Boolean val){		//
		StringBuilder reqs = new StringBuilder();
		int size = prereqs.size();
		for(int i=0;i<size;i++){
			if(i==size-1){
				reqs.append(prereqs.get(i));
			}
			else reqs.append(prereqs.get(i) + ", ");
		}
		return reqs.toString();
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
		
	public Integer getNumRating(){
		return this.numRating;
	}
	
	public Integer getNumWorkload(){
		return this.numWorkload;
	}
	
	public Integer getNumUseful(){
		return this.numUseful;
	}
	
	public void processRating(Double rating, String fbID){
		if(this.ratings.containsKey(fbID)&&(this.ratings.get(fbID)!=rating)){
			int userCount = this.numRating;
			Double temp = userCount*this.avg;
			this.avg=(temp-this.ratings.get(fbID)+rating)/(userCount);
			this.ratings.put(fbID, rating);
			return;
		}else if(this.ratings.containsKey(fbID)&&(this.ratings.get(fbID)==rating)){
			return;
		}else{
			this.ratings.put(fbID, rating);
		}
		if(avg==0.0){
			this.avg=rating;
			this.numRating=1;
		}else{
			int userCount = this.numRating;
			Double temp = userCount*this.avg;
			temp+=rating;
			this.numRating+=1;
			this.avg=temp/this.numRating;	
		}
	}
	
	public void processWorkload(Double workload, String fbID){
		if(this.workload.containsKey(fbID)&&(this.workload.get(fbID)!=workload)){
			int userCount = this.numWorkload;
			Double temp = userCount*this.work;
			this.work=(temp-this.workload.get(fbID)+workload)/(userCount);
			this.workload.put(fbID, workload);
			return;
		}else if(this.workload.containsKey(fbID)&&(this.workload.get(fbID)==workload)){
			return;
		}else{
			this.workload.put(fbID, workload);
		}
		if(work==0.0){
			this.work=workload;
			this.numWorkload=1;
		}else{
			int userCount = this.numWorkload;
			Double temp = userCount*this.work;
			temp+=workload;
			this.numWorkload+=1;
			this.work=temp/this.numWorkload;	
		}
	}
	
	public void processUseful(Double useful, String fbID){
		if(this.useful.containsKey(fbID)&&(this.useful.get(fbID)!=useful)){
			int userCount = this.numUseful;
			Double temp = userCount*this.use;
			this.use=(temp-this.useful.get(fbID)+useful)/(userCount);
			this.useful.put(fbID, useful);
			return;
		}else if(this.useful.containsKey(fbID)&&(this.useful.get(fbID)==useful)){
			return;
		}else{
			this.useful.put(fbID, useful);
		}
		if(use==0.0){
			this.use=useful;
			this.numUseful=1;
		}else{
			int userCount = this.numUseful;
			Double temp = userCount*this.use;
			temp+=useful;
			this.numUseful+=1;
			this.use=temp/this.numUseful;	
		}
	}
	
	public Double getAvg() {
		return this.avg;
	}
	
	public Double getWork(){
		return this.work;
	}
	
	public Double getUse(){
		return this.use;
	}
	
	public void resetRating(){
		if(this.ratings!=null){
			this.ratings.clear();
			this.avg = 0.0;
			this.numRating=0;
			this.ratings.put("default", 0.0);
		}
		if(this.workload!=null){
			this.workload.clear();
			this.work=0.0;
			this.numWorkload=0;
			this.workload.put("default", 0.0);
		}
		if(this.useful!=null){
			this.useful.clear();
			this.use=0.0;
			this.numUseful=0;
			this.useful.put("default", 0.0);
		}
	}
}
