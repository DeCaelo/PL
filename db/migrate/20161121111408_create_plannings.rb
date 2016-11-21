class CreatePlannings < ActiveRecord::Migration[5.0]
  def change
    create_table :plannings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :shop, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
