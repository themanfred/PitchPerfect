class FeedbacksController < ApplicationController
  def show
    @pitch = Pitch.find(params[:pitch_id])
    @feedback = Feedback.find(params[:id])
  end

  def new
    @pitch = Pitch.find(params[:pitch_id])
    @feedback = Feedback.new

  end

  def create
    @feedback = Feedback.new(feedback_params)
    @pitch = Pitch.find(params[:pitch_id])
    @feedback.pitch = @pitch
    @feedback.user = current_user
    if @feedback.save
      redirect_to pitch_path(@pitch)
    else
      render :new
    end
  end

  def update
    @feedback = feedback.find(params[:id])
    @feedback.update(feedback_params)

    redirect_to pitch_feedback_path(@feedback)
  end

  private

  def feedback_params
    params.require(:feedback).permit(
      :quality, :clarity, :pace, :body_language, :value, :language, :quality_comment, :clarity_comment, :pace_comment,
      :body_language_comment, :value_comment, :language_comment, :comment
    )
  end
end
