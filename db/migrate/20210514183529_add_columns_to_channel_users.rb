class AddColumnsToChannelUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :channel_users, :last_read_at, :datetime
  end
end
