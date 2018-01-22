class AddImgToItems < ActiveRecord::Migration[5.0]
  def change
    add_attachment :items, :img
  end
end
