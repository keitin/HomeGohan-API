class Api::CommentsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    meal = Meal.find(params[:meal_id])
    @comments = meal.comments
  end

  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.permit(:text, :user_id, :meal_id)
  end
end
