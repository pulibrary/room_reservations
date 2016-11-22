class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :netid
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.boolean :inactive

      t.timestamps
    end
  end
end
