class AnimalsController < ApplicationController

def new 
	@new_animal = Animal.new
end 

def encapture 
	@animal1 = Animal.find(params[:id])
	@animal1.update_attribute(:pen_id, :current_pen.id) 
	@animal1.save 
	redirect_to root_path 
end 

def create 
	@new_animal = Animal.new
	@new_animal.species = params[:animal]['species']
	@new_animal.energy = 10
	@new_animal.pen_id = current_pen.id

end

def feed 
	if @new_animal.health < 10 
		@new_animal.update_attribute(:health, @new_animal.health + 3)
		if @new_animal.save
			redirect_to pen_path(id: current_pen.id)
	end
end 

# pet in visitor controller? decreases animal energy 

def delete
	@cs = Animal.find(params[:id])
    @cs.destroy
end

end