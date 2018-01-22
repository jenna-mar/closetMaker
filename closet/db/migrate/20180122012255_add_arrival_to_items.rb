class AddArrivalToItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :notarrived, :boolean 
  end
end
