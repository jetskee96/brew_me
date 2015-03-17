class CreateBrews < ActiveRecord::Migration
  def change
    create_table :brews do |t|
      t.string :name
      t.text :description
      t.string :location
      t.text :tagger

      t.timestamps
    end
  end
end
