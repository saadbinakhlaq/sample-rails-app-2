class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :city
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
