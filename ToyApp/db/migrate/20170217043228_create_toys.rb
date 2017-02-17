class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.references :toyable, polymorphic: true, index: true
      t.timestamps null: false
    end
    add_index :toys, :name, unique: true
  end
end
