class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.text :general_info, default: ""
      t.jsonb :links, default: []
      t.timestamps
    end
  end
end
