Prerequisites:
	1	Selenium python bindings.
	2	Python
	3	Chrome webdriver
	4	Robot Framework
Execution:
Once you have changed directories to the location of the test folder on command prompt please execute “robot -d results tests/justeat.robot “ command.

General:
I have used 2 Layered approach to my frame work here. (all the files are under resources folder)
	1)	Page Objects
		a.	LandingPage.robot
			i.	Contains all the page objects of LendingPage
		b.	Restaurant.robot
			i.	Contains all the page objects of selection of restaurant
		c.	SearchByCategory.robot
			i.	This is a sub category for search criteria were user can search restaurant using  Cuisine name like “Indian”, “Pizza”
		d.	SearchResuts.robot
			i.	Contains objects related to search result page.
		e.	TopNav.robot
			i.	Contains object for the top search area on the home page.
	2)	Keywords
		a.	Common.robot
			i.	Contains keyword which are common to the application such as opening and closing 	application
		b.	JusteatApp.robot
		i.	Contains keywords related to application functionality.

Justeat.robot it the test file where all my scenario are located. This file us under test folder.
