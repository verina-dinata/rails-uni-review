class UniversitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # @universities = University.all
    if params[:query].present?
      sql_query = "name ILIKE :query OR country ILIKE :query OR city ILIKE :query"
      @universities = University.where(sql_query, query: "%#{params[:query]}%")
    # elsif params[:query].blank?
    #   redirect_to root_path
    else
      @universities = University.all
    end
  end

  def show
    set_university
    @reviews = @university.reviews
    if current_user.nil?
      @reviews = @university.reviews.limit(2)
    end
    @resource = User.new
  end

  private

  def set_university
    @university = University.find(params[:id])
  end

  def university_params
    params.require(:university).permit(:name, :ranking, :reviews, :description, :city, :country, :address)
  end
end
