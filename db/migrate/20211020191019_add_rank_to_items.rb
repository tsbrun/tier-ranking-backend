class AddRankToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :rank, :integer
  end
end
