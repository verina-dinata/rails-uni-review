class UniversitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
      @universities = University.all
  end

  def show
    set_university
  end

  private

  def set_university
    @university = University.find(params[:id])
  end

  def university_params
    params.require(:university).permit(:name, :ranking, :reviews, :description, :city, :country, :address)
  end
end
