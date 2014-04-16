package webapp.datastoreObjects;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class UserTest {
	
	User user;
	
	@Before
	public void tester() {	
		user = new User("Billy","Testing");
		testUserName();
		testNullEmail();
		TestLoginStatusFalse();
		
	}
	
	
	@Test
	public void testUserName() {
		String name = user.getFullName();
		assertEquals(name, "Billy Testing");
	}
	@Test
	public void testNullEmail() {
		String email = user.getUserEmail();
		assertNull(email);
	}
	@Test
	public void TestLoginStatusFalse(){
		boolean loginStatus = user.getLoginStatus();
		assertFalse(loginStatus);
	}
	@Test
	public void TestLoginStatusTrue(){
		user.setLoginStatus(true);
		assertTrue(user.getLoginStatus());
	}

}
