User Authentication:

1. need users (url and database)
URL:
    - get /signup => see a form
    - post /user => a form to create user
DATABASE:
    - need a users table to store email
2.give users passwords
3. find a user with their actual password
4. change login system to use their email and password


Errors:

1. rake aborted!
ActiveRecord::AdapterNotSpecified: The `development` database is not configured for the `default_env` environment.
PROBLEM: nothing happened when ran rake db:migrate
SOLUTION:

2.


To Do:

- Build registration process ( signup form and signup creation)
- give posts to users
- only let them edit posts they made
