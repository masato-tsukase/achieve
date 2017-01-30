class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
    @followeds = @user.followed_users
    @followers = @user.followers
    #@comment = @blog.comments.build
    #@comments = @blog.comments
  end
end
