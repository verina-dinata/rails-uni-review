class UsersController < ApplicationController
  def profile
    @user = current_user
    @educations = @user.educations
  end
end
