class CreateColorLists < ActiveRecord::Migration[5.0]
  def change
    create_table :color_lists do |t|
      t.boolean :black, :default => false
      t.boolean :white, :default => false
      t.boolean :ivory, :default => false
      t.boolean :red, :default => false
      t.boolean :pink, :default => false
      t.boolean :orange, :default => false
      t.boolean :yellow, :default => false
      t.boolean :green, :default => false
      t.boolean :blue, :default => false
      t.boolean :purple, :default => false
      t.boolean :grey, :default => false
      t.boolean :brown, :default => false
      t.boolean :gold, :default => false
      t.boolean :silver, :default => false
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
