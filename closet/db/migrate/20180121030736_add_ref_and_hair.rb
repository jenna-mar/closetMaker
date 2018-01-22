class AddRefAndHair < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :ref_url, :string
  	add_column :items, :ha_type, :string
  end
end
