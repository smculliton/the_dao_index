class AddNoVotesToHotTakes < ActiveRecord::Migration[5.2]
  def change
    add_column :hot_takes, :no_votes, :integer, default: 0
  end
end
