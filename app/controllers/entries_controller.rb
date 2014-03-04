class EntriesController < ApplicationController
	respond_to :json

	def index
		@entries = Entry.all
	end

	def show
		@entry = Entry.find(params[:id])
	end

	def create
		@entry = Entry.create!(name: params[:entry][:name], winner: params[:entry][:winner])
		render "entries/show"
	end

	def update
		@entry = Entry.find(params[:id]) #.update_attributes(params[:entry])
		@entry.update_attributes(name: params[:entry][:name], winner: params[:entry][:winner])
		render "entries/show"
	end

	def destroy
		Entry.find(params[:id]).destroy
	end

	private
		def entry_params
			params.require(:entry).permit(:id, :name, :winner)
		end

end
