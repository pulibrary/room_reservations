class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.boolean :inactive
      t.references :building, index: true

      t.timestamps
    end
  end
end
