# http://emberjs.com/guides/models/using-the-store/
Raffler.RESTAdapter = DS.RESTAdapter.extend
	serializer: DS.RESTSerializer.extend
		primaryKey: (type) ->
			'_id'

Raffler.Store = DS.Store.extend
	adapter: Raffler.RESTAdapter

Raffler.RESTAdapter.configure("plurals", entry: "entries")