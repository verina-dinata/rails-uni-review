class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :university, null: false, foreign_key: true

      t.timestamps
    end
    add_index :likes, ['user_id', 'post_id'], unique: true
  end
end
