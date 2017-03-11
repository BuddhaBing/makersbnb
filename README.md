# MakersBnB

## [Makers Academy](http://www.makersacademy.com) - Week 6 - Group project

## An [AirBnB](https://www.airbnb.co.uk/) clone, written in Ruby.

[![Build Status](https://travis-ci.org/treborb/bank_tech_test.svg?branch=master)](https://travis-ci.org/treborb/bank_tech_test)
[![codecov](https://codecov.io/gh/treborb/bank_tech_test/branch/master/graph/badge.svg)](https://codecov.io/gh/treborb/bank_tech_test)

## Technologies
* [Ruby v2.3.3](https://www.ruby-lang.org/en/)
* [Sinatra](http://www.sinatrarb.com/)
* [PostgreSQL](https://www.postgresql.org/)
* [Slim Template](http://slim-lang.com/)
* [Rspec](http://rspec.info/)
* [Capybara](https://github.com/teamcapybara/capybara)

## Jump To
* [Implemented functionality](functionality)
* [Installation](#install)
* [Usage](#usage)
* [Tests](#tests)
* [Heroku Demo](#demo)
* [Screenshots](#screenshots)
* [Contributors](#contributors)

## The Brief

Create a web application that allows users to list spaces they have available, and to hire spaces for the night.

#### Headline specifications

* Any signed-up user can list a new space.
* Users can list multiple spaces.
* Users should be able to name their space, provide a short description of the space, and a price per night.
* Users should be able to offer a range of dates where their space is available.
* Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
* Nights for which a space has already been booked should not be available for users to book that space.
* Until a user has confirmed a booking request, that space can still be booked for that night.

## <a name="functionality">Implemented functionality</a>
* User - Sign-up
* User - Log-in
* User - Log-out
* Landlord - Create room with price, name, description and address
* Landlord - Specify dates of room availability
* Landlord - Edit a room
* Tennant - Requests booking
* Landlord - Accept/reject booking
* Tennant - View bookings they have requested/made
* Landlord - View bookings that have been requested/made by tenants

## <a name="install">Installation</a>

Run the following in terminal

```
$ git clone git@github.com:treborb/makersbnb.git
$ cd makersbnb
$ rvm 2.3.3
$ gem install bundler
$ bundle
$ createdb makers_bnb_test
$ createdb makers_bnb_development
```

## <a name="usage">Usage</a>

Run the above installation steps, then in the terminal:

```
$ rackup
$ open http://localhost:9292
```

You are then free to sign up for an account, and then perform any of the actions detailed in the [Implemented functionality](functionality).

## <a name="tests">Running the tests</a>
```
$ rspec
```

## <a name="demo">[Heroku Demo](http://makers-bnb-best-bnb.herokuapp.com/)</a>
Click on the link above to see a live demo

## <a name="screenshots">Screenshots</a>

![MakersBnB - Homepage](https://d541d4157b28d9cb38c5-cf41a704c6c093350fcb8a1fb943b3e5.ssl.cf5.rackcdn.com/github-readme-images/makersbnb/home.png)

![MakersBnB - Sign in](https://d541d4157b28d9cb38c5-cf41a704c6c093350fcb8a1fb943b3e5.ssl.cf5.rackcdn.com/github-readme-images/makersbnb/sign-in.png)

![MakersBnB - Homepage](https://d541d4157b28d9cb38c5-cf41a704c6c093350fcb8a1fb943b3e5.ssl.cf5.rackcdn.com/github-readme-images/makersbnb/rooms.png)

## <a name="contributors">Contributors</a>
* [Ben Carson](https://github.com/BenJohnCarson)
* [Gurminder Bhachu](https://github.com/gbhachu)
* [James Turner](https://github.com/JamesTurnerGit)
* [Peter Grant-Hay](https://github.com/Putterhead)
* [Rob Brentnall](https://github.com/treborb)
