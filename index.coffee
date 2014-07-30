####
# CLASS
####

User = require './lib/User'


####
# MAIN
####

console.log "-- Static Methods --"
User.say() # => I'm a user model, u know ?"
console.log User.variable # => 3

console.log "\n-- Private Methods --"
user = new User('Paco')
console.log user._surname
console.log user._say()

console.log "\n-- Class Methods --"
console.log user.name
console.log user.from
user.hello()

console.log "\n-- All Methods --"
console.log "--- Class ---"
console.log User
console.log "--- Instance ---"
console.log user


