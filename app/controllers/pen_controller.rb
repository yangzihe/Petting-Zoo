class PenController < ApplicationController
  def index
    @pens = Pen.all
  end

  def show
    @pen = Pen.find(params[:id])
    @interacts = [['pet', 'pet'], ['play with', 'play with'], ['take a selfie with', 'take a selfie with']]
  end

  def new
    @pen = Pen.new
  end

  def edit
    @pen = Pen.find(params[:id])
  end

  def create
    @pen = Pen.new(pen_params)
    if @pen.save
      redirect_to pen_path(@pen.id)
    else
      redirect_to new_pen_path
    end
  end

  def update
    @pen = Pen.find(params[:id])
    if @pen.update(pen_params)
      redirect_to @pen
    end
  end

  def destroy
    @pen = Pen.find(params[:id])
    @pen.destroy
    redirect_to pen_index_path
  end

  private
    def pen_params
      params.require(:pen).permit(:name, :capacity)
    end

end
