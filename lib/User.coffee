# -- Private -----------------
# Defined before the class

_count = 0
_say_count = ->
  console.log "Count from #{_count}!"

class User

  # -- Static ------------------
  # Defined in the class with '@'
  @say: -> console.log "I'm a user model, u know ?"
  @variable : 3

  # -- Public -------------------

  constructor: (@name, @from = 'Valencia') ->
    # class variables
    @name = name

  # class method
  hello: ->
    console.log "Hello man, I'm #{@name} and I'm from #{@from}!"
    # _say_count()

exports = module.exports = User
