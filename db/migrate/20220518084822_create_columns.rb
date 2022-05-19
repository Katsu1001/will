class CreateColumns < ActiveRecord::Migration[6.0]
  def change
    create_table :columns do |t|
      t.string :name,                 null: false
      t.text :introduction,           null: false
      t.integer :category_id,         null: false
      t.integer :part_id,             null: false
      t.references :user,             null: false, foreign_key: true

      t.timestamps
    end
  end
end
