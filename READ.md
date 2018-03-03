# README #

### Sample Programming Task ###
“Meetup” site

### Expected Input ###

This app stores Users and the Groups they attend, "Meetup" style.
- Users have first names and last names. 
- Groups have a name. 
- Users can attend multiple groups and have roles in each group. 
- The roles are:
-- Organizer
-- Presenter
-- Participant.

### Expected Output ###

- The app should have all CRUD actions for Groups.
- For Users the app should take a CSV file upload in a web ui of the following format:
-- First Name
-- Last Name
-- Group Name
-- Role in Group

- From this CSV the app should associate the Users to their Groups.
- The show action for a Group should display its Users and their Roles.
- The index action for a Group should display the Organizer(s).
