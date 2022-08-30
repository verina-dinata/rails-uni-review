class EducationsController < ApplicationController
  before_action :set_education, only: %i[ :edit update]
  def index
    @educations = current_user.educations
    @education_new = Education.new
    @universities = University.all
    # @education_edit =
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

  def edit; end

  def update
    if @education.update(education_params)
      redirect_to edit_education_path(@education), notice: "education has been updated."
    else
      render :edit
    end
  end

  private

  def education_params
    params.require(:education).permit(:course, :university_id, :department_id, :academic_degree, :university_email, :start_date, :end_date)
  end

  def set_education
    @education = Education.find(params[:id])
  end
end
