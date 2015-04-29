class InteractionsController < ApplicationController

  def create
    @interaction = Interaction.create(interaction_params)
    @interaction.person = current_person
    @animal = Animal.find(params[:animal])
    @interaction.animal = @animal
    if @interaction.save
      @animal.energy = @animal.energy - 2
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def interaction_params
    params.require(:interaction).permit(:action)
  end

end