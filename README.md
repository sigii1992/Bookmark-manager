# bookmark_manager

### User story 1
As a user
So that I can see what webpages are available to choose from
I'd like to be able to view a bookmark list

### User story 2
As a user
So that I can save a website
I would like to add the site's address and title to bookmark manager

### User story 3
As a user
So I can store bookmark data
I want to add a bookmark to Bookmark Manager

### User story 4
As a user
So I can remove bookmarks from bookmark manager
I want to delete a bookmarks

Domain model for first user story:

![Screenshot 2021-11-08 at 13 40 17](https://user-images.githubusercontent.com/90654397/140752940-145899f4-6590-48ef-b03e-1c26d708b290.png)

### To set up database:

* Connect to `psql`.
* Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`, `CREATE DATABASE bookmark_manager_test;`
* Connect to the database using the `psql` command `\c bookmark_manager` and `\c bookmark_manager_test`;
* Run the query I have saved in the file 01_create_bookmarks_table.sql in the `db/migrations` folder.