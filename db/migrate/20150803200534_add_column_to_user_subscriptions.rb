class AddColumnToUserSubscriptions < ActiveRecord::Migration
  def change
    add_column :user_subscriptions, :user_id, :integer
    add_column :user_subscriptions, :subscription_id, :integer
  end
end
