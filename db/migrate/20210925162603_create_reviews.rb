class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :business, null: false, foreign_key: true
      t.integer :rating, null: false
      t.text :comment, null: false
      t.text :status, null: false, default: "pending"

      t.timestamps
    end
  end
end
