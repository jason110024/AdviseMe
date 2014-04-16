import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;

import webapp.datastoreObjects.Course;


public class CourseTester {

	Course c;
			
			
	@Before
	public void tester() {
	c = new Course("EE Test");
	test2Inputs();
	testDuplicateInputs();
	testResetRatings();
	testDuplicateInputs2();
	testNumUsers();
	testName();
	}
	@Test
	public void test2Inputs() {
		c.processRating(4.0, "1000");
		c.processRating(6.0, "2000");
		
		assertEquals(c.getAvg(),new Double(5.0));
		
	}
	@Test
	public void testDuplicateInputs() {
		c.processRating(4.0, "1000");
		c.processRating(6.0, "2000");
		c.processRating(10.0, "1000");
		
		assertEquals(c.getAvg(),new Double(8.0));
		
	}
	
	@Test
	public void testResetRatings() {
		c.resetRating();
		
		assertEquals(c.getAvg(),new Double(0.0));
		
	}
	
	@Test
	public void testDuplicateInputs2() {
		c.processRating(4.0, "1000");
		c.processRating(6.0, "2000");
		c.processRating(4.0, "1000");
		
		assertEquals(c.getAvg(),new Double(5.0));
		
	}
	@Test
	public void testNumUsers() {
		assertEquals(c.getNumRating(), new Integer(2));		
	}
	@Test
	public void testName() {
		assertEquals(c.getCourseName(), new String("EE Test"));		
	}
	

}
