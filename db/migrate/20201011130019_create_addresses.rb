class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :address, null:false
      t.string :new_address, null:false
      t.string :certificate, null:false

      t.timestamps
    end
  end
end
