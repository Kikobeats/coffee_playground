####
# Dependencies
####

User = require './lib/User'

####
# Main
####

console.log "-- Static Methods --"
console.log User
User.say() # => I'm a user model, u know ?"
console.log User.VARIABLE # => 3

console.log "\n-- Private Methods --"
user = new User
console.log user
# Note how '_surname' method is not printed when
# you print user because is a private method
console.log user._surname # => 'Batman'
console.log user._say() # => 'I'm Batman, but sssh!'

console.log "\n-- Class Methods --"
user = new User('Pepe', 'Pepito', 'Alicante')
# If you want yo call a function that dont need arguments
# you can use 'do' reseve word
do user.hello
