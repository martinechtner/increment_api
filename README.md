[![CircleCI](https://circleci.com/gh/martinechtner/increment_api/tree/master.svg?style=svg&circle-token=8637b8aad00bc0713899c5e585f1df94d066226e)](https://circleci.com/gh/martinechtner/increment_api/tree/master)

### Date
The date you're submitting this.

### Location of deployed application
If applicable, please provide the url where we can find and interact with your running application.

### Time spent
How much time did you spend on the assignment? Normally, this is expressed in hours.

### Assumptions made
- Each unique user of the API has their own increment
- Increment starts at 1
- Increment is not reset to 1 if the user starts a new session

### Shortcuts/Compromises made
If applicable. Did you do something that you feel could have been done better in a real-world application? Please let us know.

### Stretch goals attempted
If applicable, use this area to tell us what stretch goals you attempted. What went well? What do you wish you could have done better? If you didn't attempt any of the stretch goals, feel free to let us know why.
 
### Instructions to run assignment locally

** Note you will need postgresql installed **
On a mac with brew
```ruby
brew install postgresql
```

Get the code, setup the db and run the server
```ruby
git clone git@github.com:martinechtner/increment_api.git 
bundle exec rake db:setup
bundle exec rake db:migrate
rails s -p 3000
```

Using the API locally with curl:

Create a user and sign in
```ruby
curl -X POST -H 'Content-Type: application/json' -d '{"user": {"email": "test@test.com","password": "test1234","password_confirmation": "test1234"}}' http://localhost:3000/signup
```

Sign in
```ruby
curl -X POST -H 'Content-Type: application/json' -d '{"user": {"email": "test@test.com","password": "test1234"}}' http://localhost:3000/signin
```

### What did you not include in your solution that you want us to know about?
Were you short on time and not able to include something that you want us to know about? Please list it here so that we know that you considered it.

### Other information about your submission that you feel it's important that we know if applicable.

### Your feedback on this technical challenge
Have feedback for how we could make this assignment better? Please let us know.
