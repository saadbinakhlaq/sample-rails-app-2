class CreateOperatingHours < ActiveRecord::Migration[6.1]
  def change
    create_table :operating_hours do |t|
      t.belongs_to :business, index: true
      t.integer :day_of_week
      t.time :open
      t.time :close

      t.timestamps
    end
  end
end
