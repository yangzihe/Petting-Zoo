class InteractionsController < ApplicationController

  def create
    @interaction = Interaction.create(interaction_params)
    @interaction.person = current_person
    if @interaction.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def interaction_params
    params.require(:interaction).permit(:action, :animal)
  end

end