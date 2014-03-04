# for more details see: http://emberjs.com/guides/models/defining-models/

Raffler.Entry = DS.Model.extend
  name: DS.attr 'string'
  winner: DS.attr 'boolean'