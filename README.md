# README

This documentation describes how to set up the application, its components, how
to deploy it, and some internal information.

## Set up
This application needs ruby version 2.3.1. The version is set at the top of the
Gemfile, in a way similar to Heroku. Most ruby version managers and Heroku
recognize this syntax and will select the right version, or ask to install it.
To find more about ruby, go [here](https://www.ruby-lang.org/es/)

This application is also based on the latest stable Rails version, which is, at
this moment, 5.0.1. To find more about Rails, go [here](http://rubyonrails.org/)

First, you have to install all the dependencies. To do so, run:

    gem install bundler
    bundle install

After that, you have to set up the database. This can be done by running:

    rails db:setup

After that, your application is ready to go. To run it, you have to execute:

    rails s

## Deployment instructions
This application is Heroku-ready. To deploy it to heroku, you have to first set
up an application on Heroku, and add Heroku as a remote with this:

    heroku git:remote -a your-app-name

After that, you only have to push it to Heroku:

    git push heroku master

And set up the database

    heroku run bundle exec rake db:migrate

And restart Heroku:

	heroku restart    