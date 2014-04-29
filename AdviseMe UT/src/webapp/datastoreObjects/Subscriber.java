package webapp.datastoreObjects;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Subscriber {
	@Id private String email;
	
	public Subscriber(){}
	
	public Subscriber(String email){
		this.email=email;
	}
	
	public String getEmail(){
		return this.email;
	}
	
	public void setEmail(String email){
		this.email=email;
	}
}
