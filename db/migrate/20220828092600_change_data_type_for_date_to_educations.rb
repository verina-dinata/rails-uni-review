class ChangeDataTypeForDateToEducations < ActiveRecord::Migration[7.0]
  def change
    remove_column :educations, :start_date
    add_column :educations, :start_date, :date
    remove_column :educations, :end_date
    add_column :educations, :end_date, :date
  end
end
