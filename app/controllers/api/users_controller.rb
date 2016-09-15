class Api::UsersController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
  end

  private
  def user_params
    params.permit(:name, :image_url)
  end
end
