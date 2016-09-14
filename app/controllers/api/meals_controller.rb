class Api::MealsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    group = Group.find(group_params[:group_id])
    @meals = group.meals
  end

  def create
    Meal.create(meal_params)
  end

  private
  def group_params
    params.permit(:group_id)
  end

  def meal_params
    params.permit(:image_url, :text, :user_id, :group_id)
  end
end
