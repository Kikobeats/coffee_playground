# More information:
# http://coffeescriptcookbook.com/chapters/classes_and_objects/class-methods-and-instance-methods

# -- Helpers Method -------------------------
# are not associated with the class
HERO     = 'Batman'
SUPERSAY = -> console.log "#{HERO} rulz!"

class User

  # -- Static Class Method ------------------
  # defined with '@'
  # Public static method
  @say: -> console.log "I'm a user model, u know ?"
  # Private static method
  # Use case for represent a constant value
  @VARIABLE: 3

  # -- Private Class Method -----------------
  # defined whit '_'
  _surname: HERO
  # If you declared a private method and reference a
  # private variable need to reference the context (@)
  _say: -> console.log "I'm #{@_surname}, but sssh!"

  # -- Public Class Method -------------------
  # defined without '@'
  constructor: (name = 'Paco', alias = 'Paquito', from = 'Valencia') ->

    # attributes declared in the constructor
    # are accesibles (use @)

    # For convention, if you can declare a private
    # variable or method inside the class use '_'
    @_name  = name
    @_alias = alias
    @_from  = from

    # If you have too many arguments you can pass and
    # object and make the assignment
    # more information:
    # http://coffeescript.org/#destructuring

  # Class method
  hello: ->
    console.log "I'm #{@_name}, but my mum call me #{@_alias} and I'm from #{@_from}!"

exports = module.exports = User
