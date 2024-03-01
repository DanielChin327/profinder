class ChangePriceTypeToStringInServices < ActiveRecord::Migration[7.1]
  def change
    change_column :services, :price, :string
  end
end
