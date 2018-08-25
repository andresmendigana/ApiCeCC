class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.date :date_created
      t.string :title
      t.string :description
      t.string :author
      t.belongs_to :report, foreign_key: true

      t.timestamps
    end
  end
end
