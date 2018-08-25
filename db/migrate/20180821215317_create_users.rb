class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type
      t.string :name
      t.string :last_name
      t.string :email
      t.numeric :phone
      t.numeric :age
      t.numeric :activity
      t.numeric :reports

      t.timestamps
    end
  end
end
