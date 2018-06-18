class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.boolean :rsvp
      t.string :notes
      t.string :status

      t.timestamps
    end
  end
end
