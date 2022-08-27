class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.date :start_year
      t.date :end_year
      t.string :course
      t.boolean :verified
      t.references :university, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
