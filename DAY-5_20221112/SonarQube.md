
Configure the SONAR_TOKEN environment variable
Name of the environment variable: SONAR_TOKEN 
Value of the environment variable: fd7ddeeb1b853985e1f77872d0e65dffb83d0b0e 
Execute the SonarScanner for Maven from your computer
Update your pom.xml file with the following properties:
<properties>
  <sonar.organization>kummari</sonar.organization>
  <sonar.host.url>https://sonarcloud.io</sonar.host.url>
</properties>
Run the following command in the project folder:

mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=staropscenter
If you wish, you can shorten this command (to mvn verify sonar:sonar, for example) by specifying a prefix for the plugin.

See the SonarScanner for Maven documentation for more details.

		<sonar.organization>kummari</sonar.organization>
		<sonar.projectKey>staropscenter</sonar.projectKey>
		<sonar.host.url>https://sonarcloud.io</sonar.host.url>
		<sonar.login>fd7ddeeb1b853985e1f77872d0e65dffb83d0b0e</sonar.login>