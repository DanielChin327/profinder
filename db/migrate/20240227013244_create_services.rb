class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :title
      t.text :desciption
      t.integer :price
      t.string :schedule
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
