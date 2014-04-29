package webapp.datastoreObjects;

public class Subscriber {
	private String email;
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
