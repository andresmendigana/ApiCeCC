class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :latitude
      t.string :length
      t.belongs_to :report, foreign_key: true

      t.timestamps
    end
  end
end
