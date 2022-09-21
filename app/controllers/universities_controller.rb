class UniversitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @average_rating = average_rating
    if params[:query].present?
      sql_query = "name ILIKE :query OR country ILIKE :query OR city ILIKE :query"
      @universities = University.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:country]
      @universities = University.where(country: params[:country])
    else
      @universities = University.all.order(country: :asc)
    end
  end

  def show
    set_university
    @markers = [{ lat: @university.latitude, lng: @university.longitude }]
    @reviews = @university.reviews.order(created_at: :desc).page params[:page]
    @reviews = @university.reviews.order(created_at: :desc).limit(2) if current_user.nil?
    @resource = User.new
    @review = Review.new
    @educations = []
    if user_signed_in?
    #   @educations = current_user.educations
      @can_review = current_user.educations.where(university_id: @university.id).exists?
    end
    @internal_ranking = find_ranking
    @similar_universities = University.where(country: @university.country)
  end

  private

  def set_university
    @university = University.find(params[:id])
  end

  def university_params
    params.require(:university).permit(:name,
                                       :ranking,
                                       :reviews,
                                       :description,
                                       :city,
                                       :country,
                                       :address,
                                       :student_count,
                                       :domestic_course_fee,
                                       :international_course_fee,
                                       :application_deadline,
                                       :latitude,
                                       :longitude,
                                       :logo,
                                       :image,
                                       :image2,
                                       :image3)
  end

  def find_ranking
    @all_universities = University.all
    ranked_unis = @all_universities.sort { |a, b| b.global_avg <=> a.global_avg }
    ranked_unis.find_index(@university)
  end
end
