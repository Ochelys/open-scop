class CreateShareMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :share_movements do |t|
      t.string :done_at
      t.references :partner, foreign_key: true
      t.text :description
      t.integer :quantity
    end
  end
end
