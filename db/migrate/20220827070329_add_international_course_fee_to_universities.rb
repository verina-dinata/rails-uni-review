class AddInternationalCourseFeeToUniversities < ActiveRecord::Migration[7.0]
  def change
    rename_column :universities, :course_fee, :domestic_course_fee
    add_column :universities, :international_course_fee, :string
  end
end
