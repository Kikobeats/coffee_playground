# More information:
# http://coffeescriptcookbook.com/chapters/classes_and_objects/class-methods-and-instance-methods

# -- Private Method -------------------------
# this is only accessible by this code
HERO = 'Batman'
SUPERSAY = ->
  console.log "#{HERO} rulz!"

class User

  # -- Static Class Method ------------------
  # defined with '@'
  @say: ->
    console.log "I'm a user model, u know ?"
  @variable: 3

  # -- Private Class Method -----------------
  # defined whit '_'
  _surname: HERO
  _say: ->
    console.log "I'm #{@_surname}, but sssh!"

  # -- Public Class Method -------------------
  # defined without '@'
  constructor: (@name, @from = 'Valencia') ->
    # attributes declared in the constructor
    # are accesibles (use @)
    @name = name

    # For convention, if you can declare a private
    # variable or method inside the class use '_'
    @_original_name = "Paquito"

  # class method
  hello: ->
    console.log "Hello man, I'm #{@name} and I'm from #{@from}!"

exports = module.exports = User
