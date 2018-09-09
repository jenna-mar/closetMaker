class CreateJtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :jtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
