class UniversitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR country ILIKE :query OR city ILIKE :query"
      @universities = University.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:country]
      @universities = University.where(country: params[:country])
    else
      @universities = University.all
    end
  end

  def show
    set_university
    @markers = [
      {
        lat: @university.latitude,
        lng: @university.longitude
      }
    ]
    @can_review = current_user.educations.where(university_id: @university.id).exists?
    @reviews = @university.reviews.order(created_at: :desc).page params[:page]
    @reviews = @university.reviews.order(created_at: :desc).limit(2) if current_user.nil?
    @resource = User.new
    @review = Review.new
    @educations = []
    @educations = current_user.educations unless current_user.nil?
  end

  private

  def set_university
    @university = University.find(params[:id])
  end

  def university_params
    params.require(:university).permit(:name, :ranking, :reviews, :description, :city, :country, :address, :latitude, :longitude, :logo, :image, :image2, :image3)
  end
end
