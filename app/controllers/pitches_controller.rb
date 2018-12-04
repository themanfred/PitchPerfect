class PitchesController < ApplicationController
  before_action :set_pitch, only: [:show, :edit, :update, :destroy]

  def index
    @pitches = Pitch.all
    # @users = Pitch.where(id: @pitch.user_ids)
  end

  def show
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.user_id = current_user.id
    if @pitch.save
      redirect_to pitch_random_path(@pitch)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @pitch.update(pitch_params)

    redirect_to pitch_path(@pitch)
  end

  def destroy
      @pitch.destroy
      respond_to do |format|
      format.html { redirect_to pitches_url, notice: "#{@pitch.name} was deleted." }
    end
  end

  def video
    @pitch = @pitch = Pitch.find(params[:pitch_id])
  end

private
  def set_pitch
    @pitch = Pitch.find(params[:id])
  end

  def pitch_params
    params.require(:pitch).permit(:name, :topic, :duration, :target, :transcript, :photo)
  end
end
