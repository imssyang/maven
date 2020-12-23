@echo on

rem Clean target
mvn clean

rem Show denpendencies
mvn dependency:tree

rem Run spring-boot
mvn spring-boot:run
