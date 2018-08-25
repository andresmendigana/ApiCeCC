class CreateOrganizers < ActiveRecord::Migration[5.2]
  def change
    create_table :organizers do |t|
      t.string :name
      t.string :web
      t.string :image
      t.string :redes
      t.belongs_to :activity, foreign_key: true

      t.timestamps
    end
  end
end
