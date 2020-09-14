[![CircleCI](https://circleci.com/gh/martinechtner/increment_api/tree/master.svg?style=svg&circle-token=8637b8aad00bc0713899c5e585f1df94d066226e)](https://circleci.com/gh/martinechtner/increment_api/tree/master)

### Frontend Code
[https://github.com/martinechtner/increment_frontend](https://github.com/martinechtner/increment_frontend)

### Date
Sunday September 13, 2020

### Location of deployed application
API location: [https://increment-api.herokuapp.com](https://increment-api.herokuapp.com)
Frontend location: [https://increment-frontend.herokuapp.com/](https://increment-frontend.herokuapp.com//signup)

### Time spent
- 6 hours implementing the Rails API
- 14 hours implementing the React frontend

### Assumptions made
- Each unique user of the API has their own increment
- Increment starts at 1
- Increment is not reset to 1 if the user starts a new session

### Shortcuts/Compromises made
N/A

### Stretch goals attempted
- I implemented the frontend in React to interact with the API
- I deployed both the backend and frontend to heroku free servers

I did not add any error handling on the React frontend as I was learning React as I was implementing. 
I am sure I could improve on the React implementation as I learn more about React. 
 
### Instructions to run assignment locally

** Note you will need postgresql installed **

On a mac with brew:
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
curl -X POST -H 'Content-Type: application/json, Accept application/json' -d '{"user": {"email": "test@test.com","password": "test1234","password_confirmation": "test1234"}}' http://localhost:3000/signup
```

Sign in
```ruby
curl -X POST -H 'Content-Type: application/json, Accept: application/json' -d '{"user": {"email": "test@test.com","password": "test1234"}}' http://localhost:3000/login
```

Get current increment value
```ruby
curl -X GET -H 'Authorization: "Bearer XXXXXX", Accept: application/json, Content-Type: application/json' -d '{}' http://localhost:3000/current
```

Increment current value
```ruby
curl -X GET -H 'Authorization: "Bearer XXXXXX", Accept: application/json, Content-Type: application/json' -d '{}' http://localhost:3000/increment
```

Reset current increment value
```ruby
curl -X PUT -H 'Authorization: "Bearer XXXXXX", Accept: application/json, Content-Type: application/json' -d '{ current: 1234 }' http://localhost:3000/reset
```

### What did you not include in your solution that you want us to know about?
I ran out of time to implement the OAuth stretch goal, but I will implement in my free time going forward.

### Other information about your submission that you feel it's important that we know if applicable.
I deployed the frontend and backend to free Heroku servers so they are slow to start if they have gone into hibernation.

### Your feedback on this technical challenge
This was a fun challenge. 

If the person reviewing this has experience with React I would appreciate feedback on how
I could improve the frontend code.
