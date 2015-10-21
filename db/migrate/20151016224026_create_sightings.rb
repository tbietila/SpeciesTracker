class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :date
      t.string :long
      t.string :lat

      t.timestamps null: false
    end
  end
end
