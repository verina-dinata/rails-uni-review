class AddMoreImagesToUniversities < ActiveRecord::Migration[7.0]
  def change
    add_column :universities, :image2, :string
    add_column :universities, :image3, :string
  end
end
