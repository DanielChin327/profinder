class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.integer :eng_rating
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
