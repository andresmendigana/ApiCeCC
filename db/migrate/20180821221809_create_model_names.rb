class CreateModelNames < ActiveRecord::Migration[5.2]
  def change
    create_table :model_names do |t|

      t.timestamps
    end
  end
end
