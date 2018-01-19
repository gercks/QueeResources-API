
# Resources for Boston Queer Folk Front End Repository

This repository contains the front-end code for an application designed to connect queer people in the Boston Area to the resources that exist for their benefit.

The front end repository can be found here: https://github.com/gercks/QueeResources-Front-End

The deployed database can be found here: https://aqueous-falls-81772.herokuapp.com/queeresources

And the deployed front end can be found here: https://gercks.github.io/QueeResources-Front-End/

Here's what the app currently looks like:
![https://imgur.com/a/Q4aNL](https://imgur.com/a/Q4aNL)

## Technologies used

This application was made using Ruby on Rails

## How it was made

I began by scaffolding a table which I named Queeresources with the following columns: user, name, description, location, website, orgtype, and popfocus. I then switched the controller to inherit from OpenRead instead of Application. Within the queeresources controller, I made it possible for a user who is not authenticated to view a list of all resources and to view each individual resource, but not to make any changes to the database. I made it possible for an authenticated user to create, update, and delete resources, as well as see an index of all of the resources they've created. Finally, I seeded the database with data from the spreadsheet that inspired this project. 


## Improvements to be Made

I am by no means done with this app. A lot the work I want to do will only involve the front end, but I also want to add like and comment options for users, which will at least mean creating a new comment resource on the back end.

## ERD and Routes

Here is the original ERD for this project:
![https://imgur.com/a/pydRu](https://imgur.com/a/pydRu)

The API expects the following routes:
- resources :queeresources
- resources :examples, except: %i[new edit]
- post '/sign-up' => 'users#signup'
- post '/sign-in' => 'users#signin'
- delete '/sign-out' => 'users#signout'
- patch '/change-password' => 'users#changepw'
- resources :users, only: %i[index show]
