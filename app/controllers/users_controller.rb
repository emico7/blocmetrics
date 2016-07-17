class UsersController < ApplicationController
  def show
    @user = current_user
    @registered_applications = @user.registered_applications
  end
end
