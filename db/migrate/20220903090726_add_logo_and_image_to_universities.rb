class AddLogoAndImageToUniversities < ActiveRecord::Migration[7.0]
  def change
    add_column :universities, :logo, :string
    add_column :universities, :image, :string
  end
end
