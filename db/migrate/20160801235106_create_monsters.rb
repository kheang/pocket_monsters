class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :cp
      t.string :monster_type
      t.integer :weight
      t.integer :height

      t.timestamps null: false
    end
  end
end
