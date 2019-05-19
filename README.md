# Customer Web App - Spring MVC and Hibernate

This project of Spring, Spring MVC, Hibernate and MySQL.
It consist of a Customer Relationship Management (CRM) project with the CRUD operations.
<br />
This project is for purely academic purposes.

## Environment Set up

#### Java
Java 8 or 11 must be installed in order to build this project.<br />
Also, for Java 9 or higher, this 4 additional files must be in the project library: <br>

* [javax.activation-1.2.0.jar](http://search.maven.org/remotecontent?filepath=com/sun/activation/javax.activation/1.2.0/javax.activation-1.2.0.jar)
* [jaxb-api-2.3.0.jar](http://search.maven.org/remotecontent?filepath=javax/xml/bind/jaxb-api/2.3.0/jaxb-api-2.3.0.jar)
* [jaxb-core-2.3.0.jar](http://search.maven.org/remotecontent?filepath=com/sun/xml/bind/jaxb-core/2.3.0/jaxb-core-2.3.0.jar)
* [jaxb-impl-2.3.0.jar](http://search.maven.org/remotecontent?filepath=com/sun/xml/bind/jaxb-impl/2.3.0/jaxb-impl-2.3.0.jar)

#### MySQL Database
The MySQL scripts used to build the database can be found in the SQL Scripts folder in the root directory.
You can execute them with a administrator users. They will come with some mock up users.

The <b>JDBC Driver for MySQL</b> also needs to be included into the Spring project in so it can establish a connection with 
the database. 
This process may change based on your IDE.

You can find the JDBC Driver for MySQL in this [link](https://dev.mysql.com/downloads/connector/j/).

#### Spring MVC
To set up Spring is quite simple, just add all the Spring libs files to the project

#### Hibernate
To set up Hibernate add the required and the optional c3pO files under the lib directory

#### IntelliJ IDEA
After adding all those libraries to the project, you'll also need to <b>add them into the artifacts</b> that will be generated
## Built With

* [MySQL DB](https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html) - 11.0.2
* [Java](https://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html) - 11
* [Hibernate ORM](http://hibernate.org/orm/) - 5.4.2
* [Hibernate Validator](http://hibernate.org/validator/) - 6