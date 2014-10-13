## ActiveRecord, ActiveModel, Migrations and Validations

- ActiveRecord is an ORM
- Using ORM, the properties and relationships of the objects in an application can be easily stored and retrieved from a database without writing SQL statements directly and with less overall database access code
- Naming Conventions
    - Database Table - Plural with underscores separating words (e.g., book_clubs).
    - Model Class - Singular with the first letter of each word capitalized (e.g., BookClub).
- create vs new
- Read methods
    + .all
    + .first/second/last
    + .find/find_by
    + .where
- Rails provides a domain-specific language for managing a database schema called migrations. Migrations are stored in files which are executed against any database that Active Record supports using rake.
- You can think of each migration as being a new 'version' of the database. A schema starts off with nothing in it, and each migration modifies it to add or remove tables, columns, or entries. Active Record knows how to update your schema along this timeline, bringing it from whatever point it is in the history to the latest version. Active Record will also update your db/schema.rb file to match the up-to-date structure of your database.
- ```rails generate migration AddPartNumberToProducts```
- http://guides.rubyonrails.org/migrations.html
- Validations are used to ensure that only valid data is saved into your database. For example, it may be important to your application to ensure that every user provides a valid email address and mailing address. Model-level validations are the best way to ensure that only valid data is saved into your database. They are database agnostic, cannot be bypassed by end users, and are convenient to test and maintain. Rails makes them easy to use, provides built-in helpers for common needs, and allows you to create your own validation methods as well.

## HTTP verbs, REST, and Controllers