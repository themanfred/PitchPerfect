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
<<<<<<< HEAD
      redirect_to random_path
=======
      redirect_to  pitch_path(@pitch)
>>>>>>> d0fc60c5c4b1c2f9402e4a3bae59695195fcefac
    else
      render :new
    end
  end

  def destroy
    @pitch.destroy
  end

  private

  def pitch_params
<<<<<<< HEAD
    params.require(:pitch).permit(:name, :topic, :duration, :target, :transcript)
=======
    params.require(:pitch).permit(:name, :topic, :duration, :target, :target, :transcript)
>>>>>>> d0fc60c5c4b1c2f9402e4a3bae59695195fcefac
  end
end

