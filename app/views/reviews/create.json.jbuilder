if @review.persisted?
  json.form render(partial: "reviews/form", formats: :html, locals: {university: @university, review: Review.new})
  json.inserted_item render(partial: "universities/review", formats: :html, locals: {review: @review, education: @education, average_review_rating: @average_review_rating})
else
  json.form render(partial: "reviews/form", formats: :html, locals: {university: @university, review: @review})
end
