# Adejair Júnior <adejair.junioroulook@gmail.com>

class Safadao
  constructor: (@day, @month, @year) ->

  safadeza: ->
    safadeza = (([0..@month].reduce (a, b) -> a + b) + (@year / 100) * (50 - @day))
    return safadeza

  angel: ->
   return 100 - @safadeza()

  vai_safadao: ->
    console.log "#{@angel()}% anjo mais aquele  #{@safadeza()}% é vagabundo."

module.exports = Safadao
