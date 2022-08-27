class CreateUniversities < ActiveRecord::Migration[7.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :url
      t.string :country
      t.string :city
      t.string :address
      t.text :description
      t.integer :ranking
      t.float :course_fee
      t.date :application_deadline
      t.integer :student_count
      t.boolean :dorm

      t.timestamps
    end
  end
end
