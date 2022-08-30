class ChangeColYearToEducations < ActiveRecord::Migration[7.0]
  def change
    rename_column :educations, :start_year, :start_date
    rename_column :educations, :end_year, :end_date
  end
end
