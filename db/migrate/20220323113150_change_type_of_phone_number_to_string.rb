class ChangeTypeOfPhoneNumberToString < ActiveRecord::Migration[6.1]
  def change
    change_column :Restaurants, :phone_number, :string
  end
end
