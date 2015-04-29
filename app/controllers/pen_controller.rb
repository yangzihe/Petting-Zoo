class PenController < ApplicationController
  def index
    @pens = Pen.all
  end

  def show
    @pen = Pen.find(params[:id])
  end

  def new
    @pen = Pen.new
  end

  def create
    @pen = Pen.new(pen_params)
    if @pen.save
      redirect_to pen_path
    else
      redirect_to new_pen_path
    end
  end

  def edit
  end

  def delete
  end

  private
    def pen_params
      params.require(:pen).permit(:name, :capacity)
    end

end
