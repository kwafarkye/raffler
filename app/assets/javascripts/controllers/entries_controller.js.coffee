Raffler.EntriesController = Ember.ArrayController.extend

  allWinners: (->
    @everyProperty('winner')
  ).property('@each.winner')
  
  actions:
  
    addEntry: ->
      Raffler.Entry.createRecord(name: @get('newEntryName'), winner: false)
      @set('newEntryName', "")

    drawWinner: ->
      @setEach('highlight', false)
      pool = @rejectProperty('winner')
      if pool.length > 0
        entry = pool[Math.floor(Math.random()*pool.length)]
        entry.set('winner', true)
        entry.set('highlight', true)
        @get('store').commit()