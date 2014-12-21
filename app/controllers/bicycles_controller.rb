class BicyclesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  before_action :bicycle_find_by_id, only: [:edit,:update,:show,:destroy]

  def index
    @bicycles = Bicycle.sorted_descending.all
  end

  def show
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

  def edit
    @images = Image.select(type:'1', type_id: @bicycle.id)
  end

  def update
    if @bicycle.update(bicycle_params)
      flash[:notice] = t('bicycle_edited', bicycle: "#{@bicycle.title}")
      redirect_to bicycles_path
    else
      flash[:notice] = t('bicycle_edit_fail')
      render action: 'edit'
    end
  end

  def destroy
    if @bicycle.destroy
      flash[:notice] = t('bicycle_deleted', bicycle: "#{@bicycle.title}")
    else
      flash[:notice] = t('bicycle_delete_fail', bicycle: "#{@bicycle.title}")
    end
    redirect_to bicycles_path
  end

  private
    def bicycle_params
      params[:bicycle].permit(:title, :key, :status, :description, :avatar)
    end

    def bicycle_find_by_id
      @bicycle = Bicycle.find(params[:id])
    end

end
