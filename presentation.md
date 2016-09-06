# ![alt text](img/lotussm.png)  Week 3:  Java Servlets, JSP, JDBC  
3 days of class session and daily exercises  
2 days of miniproject recapping the learning objectives from the last 3 weeks



## Day 1 - Java Servlets
![alt text](img/clientServer.png "client server image")  
[Servlet tutorial](http://www.tutorialspoint.com/servlets/)  : read the sections from 'home' to 'http codes'
- The architecture (client server with HTTP, POST and GET)
  - Look at dev. tools. i chrome to see what is communicated between client and Server.
- The anatomy of a java servlet
  - DoPost() and DoGet()
  - ProcessRequest() - run through the template
    - PrintWriter
    - getContextPath
  - HttpServletRequest and HttpServletResponse objects
- The usefull methods
  - Demo getting data from userform to java console
    - request.getParameter(String) to get data from user form
- The session object.



## Exercise day 1 - 
Create an application that can register recipes from users

- Create an html form to get ingredients from the users
  - create an input field for a name for the recipe (to use in lookup)
  - Let the form be dynamic so that the user can get input field for each ingredient
  - Also a text area for the howto of the recipe
- Collect the data on the server in a data collection (Must be static since HTTP is stateless) 
hint:  
 
```javascript  

private static final Map<String, List<String>> recipes;
    static
    {
        List<String> fields = new ArrayList();
        recipes = new HashMap<String, List<String>>();
        recipes.put(recipeName, fields); //where recipeName is comming from the form.
    }
```  
  or better use a Map of recipe objects  
- Create a toString method to show the content in a formattet way in the console.



## Day 2 - JSP (Java Server Pages)
![alt text](img/jspprocessing.jpg)  
[JSP tutorial](http://www.tutorialspoint.com/jsp/)  : read the sections from 'home' to 'session tracking'  
- Architecture
  - Page Controller vs. Front Controller
- Setup a front controller example
  - use `<hidden>` form fields to communicate origin.
- use Scriplets  `<% code fragment %>` to iterate over a java list:  
`<%
out.println("Your IP address is " + request.getRemoteAddr());
%>`  

- Jsp declarations:  
` <%! int i = 0; %> `
- Jsp expressions:  
`Today's date: <%= (new java.util.Date()).toLocaleString()%>`
- Jsp comments:  
`<%-- This is JSP comment --%>`
- Jsp directives:  
`<%@ include ... %>`
- Jsp objects
  - request
  - response
  - out
  - session
- typical java with scriplets:  
```javascript
        <%! int day = 3; %> 
        <html> 
        <head><title>IF...ELSE Example</title></head> 
        <body>
        <% if (day == 1 | day == 7) { %>
              <p> Today is weekend</p>
        <% } else { %>
              <p> Today is not weekend</p>
        <% } %>
        </body> 
        </html> 
```
- session tracking

## Exercise day 2
Continue from the exercise yesterday.

- Create a jsp page that can show all the recipes by name in a formatted user friendly manner.
- Make all the recipes clickable. Use a get request to tell server what recipe was clicked.
- Create a jsp page that can show a single recipe when it was clicked from the previous page
- Create a button in the the recipe details page that loads the recipe into form elements so data can be edited.



## Day 3 - JDBC - connection the application to database  
[JDBC tutorial](http://www.tutorialspoint.com/jdbc/) : read the sections from 'home' to 'Exceptions'
- Persistence
- Setup JDBC driver
- Create working example with database connection
- Move data up and down between java collection and the database
- Get data from the db to show to user in html table
- Get data from user form and persist in db
- Setup example on how to upload picture to server and persist path in db
- ORM 
![](img/3tier.jpg)



## Exercise day 3 - 
Continue from the exercise the two past days

- Now persist the data from the recipes website into db.
- Store pictures of the dishes in an img folder
- in db let each recipe have path to the image of the dish
- read the data from the db to show in jsp pages created earlier
- if there´s time: create a picture upload button on each recipe
  - when clicked the user should be able to upload additional images
  - these additional images should be shown too when the recipe is requested.



## CA1 - Fully implemented web application
[Miniproject here: Create a web shop with Cupcakes ](Webshop.pdf)

- Create a database
- Add tables like user, invoice, orderline, bottom, topping
- Create JSP, CSS, Bootstrap, JS files for structure.
- Create Servlet to handle request and response from client to server
- Create Database Connection Class
- Create Entity classes
- Create mapper classes
- Create use cases for the app
- Create Database Facade class (based on use cases)
- Decide which jsp pages are needed for communicating with user
  - login, products page, order page, page of invoices.
- create js functions to create order and check users finances
