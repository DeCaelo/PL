class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :opening_time
      t.integer :closing_time

      t.timestamps
    end
  end
end
