# SWE Library System

This repo is for Group 9's library management system group project.

#Description

This library app is meant to function as a transactional day-to-day data entry system for book movement within a library.

**To clone the repo (type in your terminal):** ```git clone https://github.com/lilyazay/swe_library_system.git```
You will also need to ```bundle install```.
Then proceed to ```bundle exec rake db:drop db:migrate db:seed``` to have access to students and books.

Originally we were planning on using a Student ID and PIN number for logging in, but authenticating such information proved to be more difficult than we thought it would, so instead we opted to use an email and password, which allowed us to use the Bcryt library and gem. To accomplish this, we forked an existing repo of @abzter10690 and merged it with our existing code to create a final product.

The system will be able to be used by students for checking-in and checking-out, searching for books, reports on books they have, etc. The system will also be able to be used by librarians to generate reports on books currently checked-out, as well as new books being shelved.

We used the session store from Rails for storing session details and the Bcrypt library for authentication.
The Bcrypt library takes care of the validations on email and password. This also allowed us to enable different permissions for different users.
