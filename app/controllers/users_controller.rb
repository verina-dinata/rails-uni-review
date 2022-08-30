class UsersController < ApplicationController
  def profile
    @user = current_user
    @educations = @user.educations
    @universities = University.all
    @education = Education.new
  end


end
