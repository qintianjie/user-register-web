user-register-web
=================
Step 1: init the database.

	Run "com.colorcc.rest.user.mapper.test.base.TestSuite" in user-rest-dao project to create and init the database.
	 or
	Create "colorcc" database in MySQL and run "init_database.sql" on /WEB-INF/database_schema folder.

Step 2: Start the web.
	
	Run "mvn clean install -Dmaven.test.skip" on user-rest project.
	Run "mvn clean install -Dmaven.test.skip" on user-register project.
	
	cd to user-register-web project and run:
		mvn clean package jetty:run

	use http://localhost:8083/users visit the project.
