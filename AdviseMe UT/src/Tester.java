import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;


public class Tester {

	public WebDriver driver;
	public String baseUrl = "http://localhost:8888/addcourse.jsp";

	@Before
	public void init() {
		driver = new FirefoxDriver();
		driver.get(baseUrl);
	}

	@After
	public void endSession() {
		driver.close();
		driver.quit();
	}

	@Test
	public void testTitle() {
		String expectedTitle = "AdviseMe- Add Courses";
		String actualTitle = "";

		actualTitle = driver.getTitle();

		if (actualTitle.contentEquals(expectedTitle)) {
			System.out.println("Test 1 Passed!");
		} else {
			System.out.println("Test 1 Failed");
		}

		assertEquals(actualTitle, expectedTitle);
	}

	@Test
	public void testAddCourseValid() {
		driver.findElement(By.name("coursename")).sendKeys("EE 360C");
		driver.findElement(By.name("coursetitle")).sendKeys("Algorithms");
		driver.findElement(By.name("coursedescription")).sendKeys("ABC");
		driver.findElement(By.id("up")).click();
		driver.findElement(By.name("professorList")).sendKeys("A");
		driver.findElement(By.name("semestersTaught")).sendKeys("Fall 2012");
		driver.findElement(By.name("prereqs")).sendKeys("EE 422C");
		driver.findElement(By.name("submitButton")).submit();
		assertEquals("http://localhost:8888/home.jsp", driver.getCurrentUrl());
	}

	@Test
    public void testAddCourseInvalid() {
    	try{
       	driver.findElement(By.name("coursename")).sendKeys("EE 360C");
       	driver.findElement(By.name("coursetitle")).sendKeys("Algorithms");
       	driver.findElement(By.name("coursedescription")).sendKeys("ABC");
       	driver.findElement(By.id("up")).click();
       	driver.findElement(By.name("professorList")).sendKeys("A");
       	driver.findElement(By.name("semestersTaught")).sendKeys("Fall 2012");  	     	
        driver.findElement(By.name("submitButton")).submit();
    	}
    	catch(Exception IOException){
    		assertEquals("http://localhost:8888/error.jsp",driver.getCurrentUrl());
    	}
	}

	@Test
	public void checkSyllabi() {
		driver.navigate().to("http://localhost:8888/courseinfo.jsp?courseName=EE%20360C");
		driver.findElement(By.id("syllabi")).click();
		assertEquals("https://utdirect.utexas.edu/apps/student/coursedocs/nlogon/?semester=&department=E+E&course_number=360C&course_title=&unique=&instructor_first=&instructor_last=&course_type=In+Residence&search=Search",driver.getCurrentUrl());	
	}
	
	@Test
	public void CoursesNotNull() {
	driver.navigate().to("http://localhost:8888/courses.jsp");
	assertNotNull("course_name");
	}
	
	@Test
	public void CheckDisqus(){
		driver.navigate().to("http://localhost:8888/courseinfo.jsp?courseName=EE%20360C");
		assertNotNull(driver.findElement(By.id("disqus_thread")));
		
	}
	

}
