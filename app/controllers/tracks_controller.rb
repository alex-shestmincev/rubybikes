class TracksController < ApplicationController
  layout "application"
  before_action :track_find_by_id, only: [:edit,:update,:show,:destroy]

  def index
    @tracks = Track.sorted_descending.all
  end

  def show
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      flash[:notice] = t('new_track_added', track: "#{@track.title}")
      redirect_to tracks_path
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @track.update(track_params)
      flash[:notice] = t('tracks_edited', track: "#{@track.title}")
      redirect_to tracks_path
    else
      flash[:notice] = t('track_edit_fail')
      render action: 'edit'
    end
  end

  def destroy
    if @track.destroy
      flash[:notice] = t('tracks_deleted', track: "#{@track.title}")
    else
      flash[:notice] = t('tracks_delete_fail', track: "#{@track.title}")
    end
    redirect_to tracks_path
  end

  private
  def track_params
    params[:track].permit(:title, :user_id, :bicycle_id, :status, :distance, :routes_points)
  end

  def track_find_by_id
    @track = Track.find(params[:id])
  end

end
