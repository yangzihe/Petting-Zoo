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
			redirect_topen_path(@pen)
			flash[:error] = 'This pen is full. You cannot add any more animals to it.'
		end
	end

	def feed
		@pen = Pen.find(params[:pen_id])
		@animal = Animal.find(params[:id])
		if @animal.health < 10
			@animal.update_attribute(:health, @animal.health + 3)
			if @animal.save
				redirect_to pen_path(@pen)
			end
		end
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
