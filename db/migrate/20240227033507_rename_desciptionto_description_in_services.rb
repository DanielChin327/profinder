class RenameDesciptiontoDescriptionInServices < ActiveRecord::Migration[7.1]
  def change
    rename_column :services, :desciption, :description
  end
end
