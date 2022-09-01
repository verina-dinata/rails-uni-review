class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # if params[:query].present?
    #   sql_query = "name ILIKE :query OR country ILIKE :query"
    #   @universities = University.where(sql_query, query: "%#{params[:query]}%")

    #   respond_to do |format|
    #     format.html # { redirect_to root_path }   Follow regular flow of Rails
    #     format.text { render partial: "universities/list", locals: { universities: @universities }, formats: [:html] }
    #   end
    # end
  end
end
