class CreatePotions < ActiveRecord::Migration[5.0]
  def change
    create_table :potions do |t|
      t.string :pot_name
      t.string :pot_slug
      t.text :pot_desc
      t.string :pot_img
      t.string :pot_creator

      t.timestamps
    end
  end
end
