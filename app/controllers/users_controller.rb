class UsersController < ApplicationController
  def index
    @users = User.all.sort
  end
end
