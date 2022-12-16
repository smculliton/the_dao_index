class CreateHotTake < ActiveRecord::Migration[5.2]
  def change
    create_table :hot_takes do |t|
      t.string :description
      t.integer :votes, default: 0
    end
  end
end
