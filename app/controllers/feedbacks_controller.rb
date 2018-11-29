class FeedbacksController < ApplicationController
before_action :set_feedback, only: [:show, :edit, :update, :destroy]
before_action :set_pitch_id, only: [:show, :new, :create]

  def show
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.pitch = @pitch
    @feedback.user = current_user
    if @feedback.save
      redirect_to pitch_path(@pitch)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @feedback.update(feedback_params)
    redirect_to pitch_path(@feedback.pitch)
  end

  def destroy
    @feedback.destroy
    respond_to do |format|
    format.html { redirect_to pitch_path(@feedback.pitch), notice: "Feedback was deleted" }
   end
  end


private
  def set_feedback
    @feedback = Feedback.find(params[:id])
  end

  def set_pitch_id
    @pitch = Pitch.find(params[:pitch_id])
  end

  def feedback_params
    params.require(:feedback).permit(
      :quality, :clarity, :pace, :body_language, :value, :language, :quality_comment, :clarity_comment, :pace_comment,
      :body_language_comment, :value_comment, :language_comment, :comment
    )
  end
end

