class AddDefaultValForDormToUniversities < ActiveRecord::Migration[7.0]
  def change
    change_column_default :universities, :dorm, false
  end
end
