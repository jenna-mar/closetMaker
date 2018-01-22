class AddFeesPrice < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :f_price, :decimal
  end
end
