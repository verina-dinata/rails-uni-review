class ChangeDataTypeOfYearToEducation < ActiveRecord::Migration[7.0]
  def change
    change_column :educations, :start_year, :string
    change_column :educations, :end_year, :string
  end
end
