class EducationsController < ApplicationController
  def index
    @educations = Education.all
  end

  def new
    @education = Education.new
    @universities = University.all
  end

  def create
    @education = Education.new(education_params)
    @education.user = current_user
    if @education.save
      redirect_to users_profile_path, notice: "You have added your education record!."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def education_params
    params.require(:education).permit(:course, :university_id, :department_id, :academic_degree, :university_email, :start_date, :end_date)
  end
end
