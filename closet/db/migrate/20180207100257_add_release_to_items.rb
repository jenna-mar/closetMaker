class AddReleaseToItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :year, :integer
  end
end
