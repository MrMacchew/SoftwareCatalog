class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :platform
      t.string :availableTo
      t.string :availableThrough
      t.string :icon

      t.timestamps null: false
    end
  end
end
