class AnimalsController < ApplicationController

	def index
		@animals = Animal.all
	end

	def new
		@pen = Pen.find(params[:pen_id])
		@animal = @pen.animals.build
	end

	def create
		@pen = Pen.find(params[:pen_id])
		if @pen.animals.size < @pen.capacity
			@animal = @pen.animals.build(animal_params)
			@animal.energy = 10
			if @animal.save
				redirect_to pen_path(@pen)
			else
				redirect_to animal_new_path
				flash[:error] = @animal.errors.full_messages.to_sentence
			end
		else
			redirect_to pen_path(@pen)
			flash[:error] = 'This pen is full. You cannot add any more animals to it.'
		end
	end

	def feed
		@animal = Animal.find(params[:animal])
		if @animal.energy < 10
			@animal.energy = @animal.energy + 3
			@animal.save
		end
		redirect_to :back
	end

# pet in visitor controller? decreases animal energy

	def delete
		@animal1 = Animal.find(params[:id])
	    @animal1.destroy
	    redirect_to pen_path(id: current_pen.id)
	end

	private
		def animal_params
			params.require(:animal).permit(:species, :pen_id)
		end

end
