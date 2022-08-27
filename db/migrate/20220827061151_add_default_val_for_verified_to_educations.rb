class AddDefaultValForVerifiedToEducations < ActiveRecord::Migration[7.0]
  def change
    change_column_default :educations, :verified, false
  end
end
