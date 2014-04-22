package webapp.datastoreObjects;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;


@Index
@Entity
public class PasswordReset {
	@Id private Long key;
	private String userId;
	
	public PasswordReset(Long id, String user){
		this.key=id;
		this.userId=user;
	}
	
	public Long getKey(){
		return this.key;
	}
	
	public String getUserId(){
		return this.userId;
	}

}
