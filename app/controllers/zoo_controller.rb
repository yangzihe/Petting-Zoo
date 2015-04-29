class ZooController < ApplicationController
  def index
    @interactions = Interaction.all
  end
end
