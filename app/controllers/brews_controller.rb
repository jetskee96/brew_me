class BrewsController < ApplicationController
  before_action :find_brew, only: [:show, :edit, :update, :destroy]
 
  def index
    @brew = Brew.all.order("created_at DESC")
  end
  
  def show
  end
  
  def new
    @brew = Brew.new
  end
  
  def create
    @brew = Brew.new(brew_params)
    
    if @brew.save
      redirect_to @brew, notice: "Your brew was added, cheers!" 
    else
      render 'new'
    end
  end
  
  def edit

  end
  
  def update
    if @brew.update(brew_params)
      redirect_to @brew, notice: " Brew was updated, Cheers!"
    else
      render 'edit'
    end
  end
  
  def destroy
    @brew.destroy
    redirect_to root_path
  end
  
  private
  
  def brew_params
    params.require(:brew).permit(:name, :description, :location, :tagger)
  end
  
  def find_brew
    @brew = Brew.find(params[:id])
  end
  
end
