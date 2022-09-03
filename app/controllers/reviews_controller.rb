class ReviewsController < ApplicationController
  def create
    @university = University.find(params[:university_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.university = @university
    @education = @review.user.educations.where(university: @university)
    @average_review_rating = (@review.reputabilty_rating + @review.education_quality_rating + @review.campus_facilities_accom_rating + @review.course_difficulty_rating + @review.social_element_rating + @review.value_for_money_rating + @review.safety_rating + @review.career_services_rating) / 8.0

    respond_to do |format|
      if @review.save
        format.html { redirect_to university_path(@university) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "universities/show", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :reputabilty_rating, :education_quality_rating, :campus_facilities_accom_rating, :course_difficulty_rating, :social_element_rating, :value_for_money_rating, :safety_rating, :career_services_rating)
  end
end
