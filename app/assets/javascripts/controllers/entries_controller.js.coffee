Raffler.EntriesController = Ember.ArrayController.extend

  allWinners: (->
    @everyProperty('winner')
  ).property('@each.winner')
  
  actions:
  
    addEntry: (name) ->
      Raffler.Entry.createRecord(name: name, winner: false)
      @get('store').commit()

    drawWinner: ->
      @setEach('highlight', false)
      pool = @rejectProperty('winner')
      if pool.length > 0
        entry = pool[Math.floor(Math.random()*pool.length)]
        entry.set('winner', true)
        entry.set('highlight', true)
        @get('store').commit()