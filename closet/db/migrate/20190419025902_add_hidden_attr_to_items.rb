class AddHiddenAttrToItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :hidden, :boolean, :null => false, :default => false
  end
end
