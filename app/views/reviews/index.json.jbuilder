json.reviews render(partial: "reviews/index", formats: :html, locals: {review: @review, education: @education, average_review_rating: @average_review_rating})
