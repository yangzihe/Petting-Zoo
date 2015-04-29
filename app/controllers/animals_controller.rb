class AnimalsController < ApplicationController

def new 
	@new_animal = Animal.new 
end 

def create 
	@new_animal = Animal.new
	@new_animal.species = params[:animal]['species']
	@new_animal.energy = 10
	@new_animal.pen_id = current_pen.id
	if @new_animal.save
			redirect_to pen_path(id: current_pen.id)
		else 
			flash[:error] = @new_animal.errors.full_messages.to_sentence
			redirect_to animal_new_path
	end
end

def feed 
	@animal1 = Animal.find(params[:id])
	if @animal1.health < 10 
		@animal1.update_attribute(:health, @new_animal.health + 3)
		if @animal1.save
			redirect_to pen_path(id: current_pen.id)
	end
end 

# pet in visitor controller? decreases animal energy 

def delete
	@animal1 = Animal.find(params[:id])
    @animal1.destroy
    redirect_to pen_path(id: current_pen.id)
end

end