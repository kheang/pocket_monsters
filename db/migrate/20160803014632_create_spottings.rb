class CreateSpottings < ActiveRecord::Migration
  def change
    create_table :spottings do |t|
      t.string :location
      t.datetime :spotted_at
      t.references :monster, index: true

      t.timestamps null: false
    end
    add_foreign_key :spottings, :monsters
  end
end
