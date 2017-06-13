# Specifications for the CLI Assessment

Specs:
- [X] Have a CLI for interfacing with the application
CLI works properly allowing user to choose options for which item they would like more info about, as well as allows them to make multiple queries.

- [X] Pull data from an external source
The data used for this application is pulled from http://blog.flatironschool.com

- [X] Implement both list and detail views
When a user chooses a blog post category they would like see, the current blog posts for that category is displayed in a list. These values are scraped from the respective category page of http://blog.flatironschool.com
The user is then asked which item they would like more information on. Once a selection is made the CLI will display the information or details of the users selection, which will include a snippet from the blog post, the actual url of the post, along with the post author.