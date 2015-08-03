class RemoveColumnFromSubscriptions < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :user_id, :integer
  end
end
