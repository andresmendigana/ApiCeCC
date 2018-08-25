class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.date :date_created
      t.string :type
      t.string :description
      t.numeric :number
      t.string :images
      t.string :status
      t.numeric :location
      t.numeric :history
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
