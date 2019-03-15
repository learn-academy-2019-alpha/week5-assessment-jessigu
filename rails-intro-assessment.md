# Week 5 Assessment

Try your best to answer each question on your own before looking up the answer online. Once you're done writing your first answer, you can google the question and write the best answer you find.

### 1. What are some advantages of using Ruby on Rails?
once you know the rules, very intuitive and rails does all the work/ connections for you.

google: It's time-efficient. Ruby on Rails contains many ready-made plugins and modules, which allow developers not to waste time on writing boilerplate code. It's proven that RoR teams build applications 30–40% faster than teams using other programming languages and frameworks
### 2. How does Ruby on Rails use the Model View Controller (MVC) framework?
view - html files, model - database (we haven't done this yet with rails, but i see the folder in app...), controller - we've worked with controller files to declare methods and link properly to routes.


### 3. Using the information given, complete the steps for creating a new view in a rails app by filling in the blanks:

  1. Create a route:

  code:
  ```
  get '/about' => 'statics#about'
  ```
  file: config/routes

  2. Create the ____________ controller

  code:
  ```
  class StaticsController____________ < ApplicationController

  def about
    _______________________ code to execute... render html
  end
  ```

  file: _____________________ statics_controller.rb

  3. Create the View

  code:

  ```
  <div>This is the About page!</div>
  ```

  file: _____________________ about.html.erb


### 4. Look at these sets of Rails routes, they are an example of which principle/term that we touched on briefly in class? Find the term, and explain why it is important.

```
/users/       method="GET"     # :controller => 'users', :action => 'index'
/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/new    method="GET"     # :controller => 'users', :action => 'new'
/users/       method="POST"    # :controller => 'users', :action => 'create'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
```

http verbs... related to CRUD. more on this later...

### 5. What is the public folder used for in Rails?
so you have access to files across your platform

google - The public directory contains some of the common files for web applications. By default, HTML templates for HTTP errors, such as 404, 422 and 500, are generated along with a favicon and a robots.txt file. Files that are inside this directory are available in https://appname.com/filename directly.

### 6. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"
get 'game/:guess' => 'main#game'
### 7. What are cookies for? How do they work? What is the difference between a session and a cookie?
cookies store information in the browser. i think session does something similar but it's linked to a user's login.

google - The main difference between a session and a cookie is that session data is stored on the server, whereas cookies store data in the visitor's browser. Sessions are more secure than cookies as it is stored in server.

### 8. In an html form, what does the "action" attribute tell you about the form?  How do you designate the HTTP verb for the form?
action is linked to the method declared in the controller and linked in the route. the method is the http verb (get, put, post, delete).ex:

<form action="about" method = "get"> HTML FORM

get '/about' => 'statics#about' ROUTES

### 9. Why would you use an instance variable in a rails controller?
less typing, concise code, easier to refer to in view file

google doesn't have much more to offer. some recommendations for best practices... declare within method and don't overuse
### 10. Name two rails generator commands and what files they create:
rails generate controller User index create
- this command would create a new controller named User with 2 methods named index & create, the associated html files, and css.
rails generate model Users
- this command would generate the model file
- couple others included scaffold and resource(s?) ... their use is less clear at the moment

### 11. There is a table called "squirrels". What SQL code would we write to print everything in the table?
SELECT * FROM squirrels

### 12. What is a foreign key? Where would you use it in a has many/belongs to relationship?
[Your Answer] has many; a key from another table that links to other tables

[Googled Answer]
In the context of relational databases, a foreign key is a field (or collection of fields) in one table that uniquely identifies a row of another table or the same table. In simpler words, the foreign key is defined in a second table, but it refers to the primary key or a unique key in the first table.
### 13. Rails has a great community and lots of free tutorials to help you learn. Here is a list of some tutorials to choose from, choose one, do it, and then report back here at least one thing you learned. You can also use a different resource if you find one that you like better.

- https://www.tutorialspoint.com/ruby-on-rails/index.htm
- http://railsforzombies.org
- http://guides.rubyonrails.org/getting_started.html
i did a similar exercise last week with ruby and not that i don't want to learn more about rails, but im struggling more with CRUD and REST, their connection or difference and chose to explore this more. hope thats ok. i can promise that im also researching and practicing rails too:)

read this: https://www.bmc.com/blogs/rest-vs-crud-whats-the-difference/

in summary, seems like REST is linked more to API and server requests, while CRUD deals with model/database. that distinction is useful for me and provides the clarity i needed.
Create = PUT with a new URI
         POST to a base URI returning a newly created URI
Read   = GET
Update = PUT with an existing URI
Delete = DELETE
