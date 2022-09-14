class ChangeTypeToStatusForVotes < ActiveRecord::Migration[7.0]
  def change
    rename_column :votes, :type, :status
  end
end
