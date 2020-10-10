class ChangeDataPhoneNumberToInformation < ActiveRecord::Migration[5.2]
  def change
    change_column :information, :phone_number, :bigint
  end
end
