class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :rdate
      t.datetime :start_time
      t.datetime :end_time
      t.integer :duration
      t.string :name
      t.string :note
      t.integer :expected_attendance
      t.boolean :tentative
      t.boolean :recurring
      t.boolean :approved
      t.references :person, index: true
      t.references :room, index: true

      t.timestamps
    end
  end
end
