class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home home_search]

  def home
    @first_review = Review.first
    @third_review = Review.third
    @last_review = Review.last
    @second_review = Review.second
    @fourth_review = Review.fourth
    @fifth_review = Review.fifth
  end

  def home_search
    @universities = []
    if params[:query].present?
      sql_query = "name ILIKE :query OR country ILIKE :query OR city ILIKE :query"
      @universities = University.where(sql_query, query: "%#{params[:query]}%")
    end
    respond_to do |format|
      # format.html # { redirect_to root_path }   Follow regular flow of Rails
      format.text { render partial: "universities/list", locals: { universities: @universities }, formats: [:html] }
    end
  end

end
