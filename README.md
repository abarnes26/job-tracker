# Job Tracker

## Learning Goals

* Use migrations to create tables with different data types including indexed foreign keys
* Update a routes file using appropriate syntax
* Create controllers with methods for all CRUD functionality appropriately using RESTful routes
* Use ActiveRecord in models to appropriately 1) manage relationships between resources, and 2) perform intermediate queries of a database
* Use best practices in views, partials, and helpers to minimize the number of variables passed and duplication of code and follow SRP

## Project Specs

You will be working with the existing code in this repository to modify a personal job tracking app. Imagine that your close friend has learned just enough rails to be dangerous, and has started to create an app to track job opportunities they find interesting. They are planning to maintain this site themselves (i.e. they will be adding all companies and jobs, and don’t anticipate companies or other users posting/reviewing jobs). The application currently has the following functionality:

* Jobs can be created and read.
* Jobs have a title, description, a city, and level_of_interest.
* Companies can be created, read, updated, and deleted.
* Companies have a name.
* A Job `belongs_to` a Company, and a Company `has_many` jobs.

## Rubric

The rubric below describes additional functionality that you will need to add to this application, as well as code standards that will be expected.

### Jobs

[X] A user can update a job

[X] A user can delete a job

### Categories

[X] The user can create a new Category by filling out a form. Each Category has a title (e.g. “Web Development”, “Education”, “Finance”).

[X] When the user successfully creates a Category they are shown a page with the Category title.

[X] When the user tries to create a Category that already exists, they are brought back to the page with the form to create a Category.

[X] The user can view a list of all Categories on a single page, and each Category can be deleted from that page. There is also a link to “Edit” each Category, which takes the user to a form where they can update the Category.

[X] When the user creates a new Job, they are required to select its Category from a drop down menu of existing categories. They also see a link to create a new Category.

[X] When the user visits a page for a specific Category, they see a list of Jobs in that Category.

### Comments

[X] When the user visits the page for a specific Job, in addition to information about the job there is a form that allows them to enter a Comment for that Job (e.g. “Spoke to hiring manager, Jacob. Plan to follow up Monday.”).

[X] Each comment has content (also created_at and updated_at).

[X] When the user submits a new comment, they are redirected back to the page for that specific job and the comment appears on the page.

[X] The user can leave multiple comments on a job and the most recent comments are shown above older comments (in reverse of the order in which they were created).

### Contacts

[X] When the user visits the page for a specific Company, in addition to information about the job there is a form that allows them to enter a Contact for that Company (e.g. “Penelope Santorini”, “Hiring Manager”, “penelope@wooo.com”).

[X] Each Contact has a full name, position, email, and company (which relates to the company you’ve already created). It should be possible for a Company to have more than one Contact, but a Contact only works at one Company.

[X] When the user submits a new contact, they are redirected back to the page for that specific company and the contact appears on the page.

### Analysis

[X] The user can visit `/jobs?sort=location` to view a list of the jobs sorted by `city`.

[] The user can visit `/dashboard` to see

    [X] A count of jobs by `level_of_interest`

    [X] The top three companies ranked by average level of interest along with their respective average level of interest.

    [X] A count of jobs by `location` with a link to visit a page with jobs only in that location. The url should be `/jobs?location=Denver`.

[X] The user can visit `/jobs?sort=interest` to view a list of the jobs sorted by `level_of_interest`.

### Databases

[X] The database has appropriate tables and columns to create relationships between tables

[X] Table and column names follow convention

### Routes

[] Routes are defined for all functionality and not any additional functionality

[X] All routes conform to RESTful conventions for resources

[X] Routes to pages that are not specifically for resources stored in the database are not named in a way that an experienced developer would find surprising

### Controllers

[X] The developer has moved logic out of the controllers and into the models/POROs where appropriate.

[X] The developer uses strong params in a private method

[X] Instance variables being passed to views are appropriately named and limited in number

### ActiveRecord

[X] ActiveRecord methods are used in models to supply all appropriate functionality

[X] Methods exist on the appropriate model

[X] Developers are not referencing other classes or `self` in models unnecessarily

[X] Ruby enumerables are not used where ActiveRecord methods could provide the necessary functionality

[X] Developer can explain the ActiveRecord methods they used and the relationships between ActiveRecord models

### Views

[X] Logic has been removed from views and controllers to the full degree possible

[X] Developer ha minimized the number of variables passed to the view

[X] Developer can articulately explain their strategies for extracting this logic

[X] Developer uses partials to reduce duplication of code in the view layer

### User Experience

[X] The application has been styled and the user can easily navigate between different portions of the application without manually entering the URL into the nav-bar or using the back button on their browser.

### Testing

[X] Project has a running test suite

[X] Test suite includes robust feature tests

[X] Test suite includes tests for validations

[X] Test suite includes tests for methods that they have created on the models

## Extensions:

### Tags

[] The user is able to create new Tags from a form on the website.

[] Each tag has a Title (e.g. “interview scheduled”, “waiting to hear back”, “email sent”, “research complete”, etc.).

[] The user is able to view a list of Tags

[] The user is able to delete Tags from the list of Tags.

[] The list of tags also has a link to “Edit” each tag.

[] When a user visits the site for a specific Tag they see a list of all jobs with that Tag.
