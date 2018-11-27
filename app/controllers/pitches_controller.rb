class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def show
    @pitch = Pitch.find(params[:id])
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.user_id = current_user.id
    if @pitch.save
      redirect_to random_path
    else
      render :new
    end
  end

  def destroy
    @pitch.destroy
  end

  private

  def pitch_params

    params.require(:pitch).permit(:name, :topic, :duration, :target, :transcript)

  end
end

