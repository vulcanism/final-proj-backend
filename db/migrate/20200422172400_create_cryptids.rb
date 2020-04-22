class CreateCryptids < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptids do |t|
      t.string :name
      t.string :size
      t.string :classification

      t.timestamps
    end
  end
end
