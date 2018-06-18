class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :user_id
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
