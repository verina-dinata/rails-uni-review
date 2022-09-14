class AddTypeToVotes < ActiveRecord::Migration[7.0]
  def change
    add_column :votes, :type, :integer, default: 0
  end
end
