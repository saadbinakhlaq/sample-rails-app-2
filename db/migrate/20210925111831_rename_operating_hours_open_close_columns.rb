class RenameOperatingHoursOpenCloseColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :operating_hours, :open, :opening_timing
    rename_column :operating_hours, :close, :closing_timing
  end
end
