class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.references :user, foreign_key: true, null:false
      t.string :email, null:false
      t.integer :phone_number, null:false

      t.timestamps
    end
    
    add_index :information, :email, unique: true

  end
end
