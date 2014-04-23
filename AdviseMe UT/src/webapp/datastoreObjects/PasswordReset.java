package webapp.datastoreObjects;

import java.text.SimpleDateFormat;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;


@Index
@Entity
public class PasswordReset {
	@Id private Long key;
	private String userId;
	private SimpleDateFormat date;
	
	public PasswordReset(){}
	
	public PasswordReset(Long id, String user){
		this.key=id;
		this.userId=user;
		this.date = new SimpleDateFormat("MM-dd-yyyy");
	}
	
	public Long getKey(){
		return this.key;
	}
	
	public String getUserId(){
		return this.userId;
	}
	
	public SimpleDateFormat getDate(){
		return this.date;
	}

}
