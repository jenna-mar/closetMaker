class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :o_name
      t.string :brand
      t.string :type
      t.string :color
      t.decimal :p_price
      t.string :price_currency
      t.date :date_p
      t.date :date_r
      t.text :notes

      t.timestamps
    end
  end
end
