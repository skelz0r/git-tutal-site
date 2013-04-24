class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.string :plugin_name
      t.integer :level
      t.text :description
      t.text :solution

      t.timestamps
    end
  end
end
