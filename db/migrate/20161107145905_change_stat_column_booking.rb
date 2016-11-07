class ChangeStatColumnBooking < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :stat, :old_stats
    add_column :bookings, :stat, :integer
  end
end
