class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.references :planning, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
