collection @entries => :entries

node (:_id) { |entry| entry.id.to_s }
attributes :name, :winner