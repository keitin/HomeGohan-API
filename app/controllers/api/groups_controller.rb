class Api::GroupsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    user = User.find(user_params[:user_id])
    @groups = user.groups
  end

  def create
    puts "TODO: CREATE GROUPS"
  end

  private
  def user_params
    params.permit(:user_id)
  end
end
