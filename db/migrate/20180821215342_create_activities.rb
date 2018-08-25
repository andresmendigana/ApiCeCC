class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.date :date_created
      t.string :title
      t.string :type
      t.date :date_event
      t.date :hour
      t.string :short_description
      t.string :description
      t.numeric :organizers
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
