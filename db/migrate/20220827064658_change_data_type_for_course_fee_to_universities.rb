class ChangeDataTypeForCourseFeeToUniversities < ActiveRecord::Migration[7.0]
  def change
    change_column :universities, :course_fee, :string
  end
end
