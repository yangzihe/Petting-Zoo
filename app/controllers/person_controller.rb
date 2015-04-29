class PersonController < ApplicationController

	def index
		@persons = Person.all
	end

	def show
		@person = Person.find(params[:id])
    @interactions = Interaction.where(person: @person)
	end
	
end
