package webapp.datastoreObjects;

import java.io.UnsupportedEncodingException;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import org.apache.commons.codec.binary.Base64;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;



@Index
@Entity
public class User implements Comparable<User>{
	@Id private Long id;
	private String firstName = "No first name entered.";
	private String lastName = "No last name entered.";
	private String userEmail = null;
	private String username;
	private String passwordHash; // thesh base64 encoded SHA1 haed password + added salt
	private String passwordSalt; // the random salt added to the password
	private boolean loginStatus = false;
	private ArrayList<String> courseList;
	private Date loginDate;
	
	@SuppressWarnings("unused")
	private User(){
		courseList = new ArrayList<String>();
	}
	
	public User(String firstName, String lastName, String email, String username, String password) throws NoSuchAlgorithmException, UnsupportedEncodingException{
		this.firstName=firstName;
		this.lastName=lastName;
		this.userEmail=email;
		this.loginStatus = false;
		this.username=username;
		this.loginDate = new Date();
		courseList = new ArrayList<String>();
		PasswordAndSalt passwordAndSalt = new PasswordAndSalt(password);
		this.passwordHash=passwordAndSalt.getPasswordHash();
		this.passwordSalt=passwordAndSalt.getPasswordSalt();
	}

	
	public User(String fbUserId, String firstName, String lastName, String userEmail, String username, String password) throws NoSuchAlgorithmException, UnsupportedEncodingException{
		this.id=Long.valueOf(fbUserId);
		this.firstName=firstName;
		this.lastName=lastName;
		this.userEmail=userEmail;
		this.username=username;
		this.loginStatus=false;
		this.loginDate = new Date();
		courseList = new ArrayList<String>();
		PasswordAndSalt passwordAndSalt = new PasswordAndSalt(password);
		this.passwordHash=passwordAndSalt.getPasswordHash();
		this.passwordSalt=passwordAndSalt.getPasswordSalt();
	}
	
	public ArrayList<String> getUserClassList(){
		return courseList;
	}
	
	public void addUserClass(String course){
		this.courseList.add(course);
	}
	
	public String getfbUserId(){
		return this.id.toString();
	}
	
	public void addfbUserId(String fbID){
		this.id=Long.valueOf(fbID);
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
	
	public String getUsername(){
		return this.username;
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
	
	public boolean authenticate(String password){
		byte[] bDigest = Base64.decodeBase64(this.passwordHash);
		byte[] bSalt = Base64.decodeBase64(this.passwordSalt);
		byte[] proposedDigest = null;
		try{
			proposedDigest = getHash(password,bSalt);
		}catch(NoSuchAlgorithmException e){
			e.printStackTrace();
			return false;
		}catch(UnsupportedEncodingException e){
			e.printStackTrace();
			return false;
		}
		return Arrays.equals(proposedDigest, bDigest);
	}
	
	private class PasswordAndSalt{
		private String passwordHash;
		private String passwordSalt;
		
		public String getPasswordHash(){
			return passwordHash;
		}
		
		public String getPasswordSalt(){
			return passwordSalt;
		}
		
		/**
		 * Creates an Object containing a SHA1 hashed, salted and Base64 encoded password string
		 * and Base 64 encoded salt string based on a encrypted password
		 * 
		 * @param password should be unencrypted
		 * @throws NoSuchAlgorithmException if SHA1 hashing is not supported
		 * @throws UnsupportedEncodingException if UTF-8 encoding is not supported
		 */
		public PasswordAndSalt(String password) throws NoSuchAlgorithmException, UnsupportedEncodingException{
			byte[] bSalt = new byte[8];
			SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
			random.nextBytes(bSalt);
			byte[] bDigest = getHash(password,bSalt);
			this.passwordHash= Base64.encodeBase64String(bDigest);
			this.passwordSalt = Base64.encodeBase64String(bSalt);
		}
	};
	
	/**
	 * Creates an SHA-1 hash based on unencrypted password and salt
	 * 
	 * @param password
	 * @param salt
	 * @return SHA-1 hash based on unencrypted password and salt
	 * @throws NoSuchAlgorithmException if SHA1 hashing is not supported
	 * @throws UnsupportedEncodingException if UTF-8 encoding is not supported
	 */
	private byte[] getHash(String password, byte[] salt) throws NoSuchAlgorithmException, UnsupportedEncodingException{
		MessageDigest digest = MessageDigest.getInstance("SHA-1");
		digest.reset();
		digest.update(salt);
		byte[] input = digest.digest(password.getBytes("UTF-8"));
		digest.reset();
		input = digest.digest(input);
		return input;
	}
}
