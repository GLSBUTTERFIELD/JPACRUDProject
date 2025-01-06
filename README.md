# JPACRUDProject
### Overview
This dynamic website keeps a log of dance classes attended and allows the user to view class details, search for a class by it's id #, update or delete an existing class, or add a new class. The following fields are required when creating or updating a class:<ul><li>class type</li><li>date</li><li>start time</li><li>instructor</li><li>interval 1</li><li>interval 2</li></ul>All field options are prepopulated and selected via radio buttons, dropdown lists, or form inputs such as a clock or calendar. Whenever a class is created or updated, the last update field is timestamped with the current date and time and the weekday is set from the inputted date. The class log on the home page shows added classes and removes classes after they've been deleted.

### Technologies & Concepts Used
<li>Object-Relational Mapping</li><ul>
	<li>MAMP</li>
	<li>MySQL</li>
	<li>driver implmentation</li>
	<li>database connection</li>
	<li>query definition and execution with bind variables</li></ul>
<li>MySQL Workbench</li><ul>
	<li>schema design/<li>
	<li>creating attributes & datatypes</li>
	<li>inserting data</li>
	<li>forward engineering</li></ul>
<li>Java & Object Oriented Design</li><ul>
	<li>CRUD: creating, retrieving, updating, and deleting MySQL data</li>
	<li>Command Objects & Java(Spring)Beans</li>
	<li>JSPs, Expression Language, & JSTLs</li></ul>
<li>SpringToolSuite</li><ul>
	<li>JPA project</li><ul>
		<li>Entity mapping</li>
		<li>JUnit tests</li>
		<li>persistence.xml</li></ul>
	<li>Spring Boot project</li><ul>
		<li>Controller, DAO, & DAOImpl classes</li>
		<li>application.properties</li>
		<li>JSPs and stylsheets</li></ul>
	<li>Gradle dependencies</li>
	<li>keyboard shortcuts</li>
	<li>source menu commands</li></ul>
<li>Front End Design</li><ul>
	<li>Bootstrap</li>
	<li>html/css stylesheets</li></ul>	
<li>Unix CommandLine</li>
<li>MacOS Terminal</li>

### Lessons Learned
#### Overall:
Although I felt overwhelmed at times, I really enjoyed this project. It was fun to see things come together throughout so many different process points, and I'm proud of what I created. My biggest struggle for this project was time management. I wish I had spent more time at the beginning of break coding, but I was glad to end break with a big push as we enter the second half of our bootcamp. It helped refresh and remind me of everything we're doing, especially as I had missed a few days prior to break, and going back to watch the recordings was helpful. Hopefully I am training myself to get into the routine of coding every day and sticking it out through my job search.
#### Challenges:
I struggled with the html in my jsps the most; it caused me to mess up some of my code so my pages weren't loading and it was frustrating having to comb through everything to find a missing backslash. I did use ChatGPT a lot to review my code and help me use the correct tags and html syntax. 
I also spent a lot of time trying to figure out how to split and utilize the "intervals" field that had two intervals separated by a a comma. Early on I decided to just change from one String to two Strings and added an "interval2" field, which then allowed me to prepopulate both intervals in the updateClass.do and confirmDeleteClass.do jsps.
#### Successes:
I like the way my website turned out, and am glad I somehow figured out how to embed a photo in the background of the homepage. Another feature I like is the nav bar, which disables certain links if they are not applicable on that page. I think it's fun that the instructors image shows up when you view a class, update a class, or add a new class.