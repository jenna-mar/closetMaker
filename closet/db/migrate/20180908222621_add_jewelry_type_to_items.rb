class AddJewelryTypeToItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :jewelry_type, :string
  end
end
