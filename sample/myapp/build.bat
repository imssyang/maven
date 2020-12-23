@echo on

rem Create project -- my-app
mvn archetype:generate ^
-DgroupId=com.mycompany.app ^
-DartifactId=my-app ^
-DarchetypeArtifactId=maven-archetype-quickstart ^
-DarchetypeVersion=1.4 ^
-DinteractiveMode=false

rem Enter project -- my-app
cd my-app

rem Validate project is correct and all necessary information is available
mvn validate

rem Compile source code of the project
mvn compile

rem Test the compiled source code using a suitable unit testing framework
mvn test

rem Take the compiled code and package it in its distributable format, eg JAR -- my-app
mvn package

rem Run any checks to verify the package is valid
mvn verify

rem Run project -- my-app
java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App

rem Install the package into the local repository
mvn install

rem Copy dependencies
mvn dependency:copy-dependencies

rem Generates site documentation for this project
mvn site

