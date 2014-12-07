class BicyclesController < ApplicationController
  def index
    
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    if @bicycle.save
      flash[:notice] = t('new_bicycle_added', bicycle: "#{@bicycle.title}")
      redirect_to bicycles_path
    else
      render action: 'new'
    end
  end

  private
    def bicycle_params
      params[:bicycle].permit(:title, :key, :status, :description)
    end

end
