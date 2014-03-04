class Entry
  include Mongoid::Document
  field :name, type: String
  field :winner, type: Mongoid::Boolean
end
