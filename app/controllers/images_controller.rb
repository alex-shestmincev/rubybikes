class ImagesController < ApplicationController

  def new
    render :json => image_params
  end

  private
  def image_params
    params[:image].permit(:type, :type_id)
  end

end
