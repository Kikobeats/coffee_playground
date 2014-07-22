####
# CLASS
####

User = require './lib/User'


####
# MAIN
####

user = new User('Paco')
User.say()
user.hello()
console.log User.variable
