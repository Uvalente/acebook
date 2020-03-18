# AceBook
[![Maintainability](https://api.codeclimate.com/v1/badges/93e609171c7f0ad17871/maintainability)](https://codeclimate.com/github/Uvalente/acebook/maintainability)

This project is designed to act as a social media site where users can:

- Sign up, sign in, and sign out
- Post content to their own wall, other uses walls or a joint wall
- Comments can be added to each post
- 'Likes' can be added to ech post and/or comments, limited to one per user (then an unlike function is shown)
- Each username is a link to that persons own wall
- A user can change their username at any time via the edit accont function
- Any users signed in on the site can click on the 'chat' button and partecipate to a live chatroom


## Quickstart

First, clone this repository. 

Then:

```bash
> bundle install
> rails db:create
> rails db:migrate
```

This will ensure that:
- All the gems are installed
- Databases are created and updated

To run the test use:

```
> rspec
```

To run the server use:

```
> rails server
```

Finally, enjoy Acebook via http://localhost:3000/

## Outline & Contribution

[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

## User Stories

As we work and receive new requirements from the client, we are updating our [userstories.md](userstories.md) document.

We also copy these user stories onto Trello https://trello.com/b/M4b8WWOm/u-jakd making sure to update the status of each user story into the relevant column.

## Live app

The current production version of the app gets automatically deployed with changes made into the master branch, and can be found hosted on Heroku at https://acebook-uvalente.herokuapp.com
