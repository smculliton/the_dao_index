# README

<img src=https://media.giphy.com/media/q9O2731zgK9VbcrgF5/giphy.gif align=right width=30% height=30%>

## Table of Contents
* [General Info](#general-info)
* [Learning Goals](#learning-goals)
* [Technologies](#technologies)
* [Usage](#usage)

## General Info
An app that tracks all the *ahem* **wisdom** shared by enigmatic [Turing School of Software and Design](https://turing.edu/) professor, Mike Dao. The Dao Index also allows users to record new Hot Takes mentioned by Mike during class, and vote on whether or not it is indeed a Hot Take or if he's actually onto something. 

**Current Spiciest Take:**

🌶 Tacos are sandwiches 🌶

The app can be found deployed [here](https://the-dao-index.herokuapp.com/)

## Learning Goals
- Style a frontend using Bootstrap and CSS classes
- Design a user-friendly monolithic app from the ground up


## Technologies
- Ruby 2.7.4
- Rails 5.2.8

## Usage

Clone the repo by running `git clone` with the copied URL onto your local machine

Then, run the following commands:
```
cd the_dao_index
bundle install
rails db:{drop,create,migrate}
rails s
```

Visit `localhost:3000` in your browser. 
