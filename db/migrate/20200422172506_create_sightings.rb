class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.belongs_to :cryptid
      t.datetime :date
      t.string :location
      t.string :note

      t.timestamps
    end
  end
end
