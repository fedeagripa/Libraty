class DropColumnOldStat < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :old_stats
  end
end
