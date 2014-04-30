package webapp.datastoreObjects;

import java.util.ArrayList;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Index
@Entity
public class CourseEdits implements Comparable<Course> {
	private String courseName ="No course name entered.";
	@Id Long id;
	private String title = "No course title entered.";
	private String description= "Default UT description";
	private String userID;
	private Boolean upperDivision; 	//true if upper division; false if lower division
	private ArrayList<String> professorList;
	private ArrayList<String> semestersTaught;
	private ArrayList<String> prereqs;
	
		
	@SuppressWarnings("unused")
	private CourseEdits(){}

	public CourseEdits(String courseName, String user){
		this.courseName=courseName;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.userID=user;
		this.prereqs = new ArrayList<String>();
	}
	
	public CourseEdits(String courseName, String user, String title){
		this.courseName=courseName;
		this.title=title;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.userID=user;
		this.prereqs = new ArrayList<String>();
	}
	
	public CourseEdits(String courseName, String user, String title, String description,boolean upperDiv){
		this.courseName=courseName;
		this.title=title;
		this.description=description;
		this.professorList = new ArrayList<String>();
		this.semestersTaught = new ArrayList<String>();
		this.prereqs = new ArrayList<String>();
		this.userID=user;
		this.upperDivision = upperDiv;
	}
	
	public Long getId(){
		return this.id;
	}
	
	public String getUserId(){
		return this.userID;
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

	public boolean getUpperDivision() {
		return this.upperDivision;
	}

	public void setUpperDivision(boolean upperDivision) {
		this.upperDivision = upperDivision;
	}

	public ArrayList<String> getProfessorList(){
		return this.professorList;
	}
	
	public String getProfessorList(Boolean val){		
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
	
	public ArrayList<String> getSemesterTaught(){
		return this.semestersTaught;
	}
	
	public String getSemesterTaught(Boolean val){		
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
	
	public ArrayList<String> getPrereq(){
		return this.prereqs;
	}
	
	public String getPrereq(Boolean val){		
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
	
	@Override
	public int compareTo(Course o) {
		return this.getCourseName().compareTo(o.getCourseName());
	}
}
