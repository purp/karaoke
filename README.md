# KARAOKE

This karaoke web app can run on a laptop computer casting video to a screen via chromecast and audio to a karaoke speaker using bluetooth. Users can login with the karaoke host's login information to add songs to the queue from their mobile devices.

## Description

A user can access the web app to login with the karaoke host's login information and then click the link to navigate to the /songs index page. The /songs index page contains a form at the top to queue a new song object containing a URL to a video karaoke version of a song, likely from YouTube. Upon submit of the form the song is added to the bottom of the queue on the /songs index page. The next song has a play icon that will open the URL in a new browser tab and mark the song object as finished, then it will move to the finished list at the bottom of the page. In the event a performer is not available to perform their song, the song can  be postponed by clicking the skip button until the performer is ready to click the button again and add themselves back into the queue. 

## Getting Started

Identified in the gemfile, this app uses Ruby 3.2.2, Rails ~> 7.1.2, PG ~> 1.1 for use on Heroku, Devise, Haml Rails, Sassc Rails, and RSPec Rails. Initial setup of the app is very standard for a Ruby on Rails app. Simply clone, run "bundle install" and "rails db:migrate" and start it up with "rails s". Because I have removed the ability to sign up with devise, in hopes of soon implementing an admin invite feature using devise invitable, you will need to create your first user through the rails console using "rails c" and a command like "User.create!({:email => "guy@gmail.com", :password => "111111", :password_confirmation => "111111" })"

### Dependencies

* Describe any prerequisites, libraries, OS version, etc., needed before installing program.
* ex. Windows 10

## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
