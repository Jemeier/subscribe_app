class AddImageColumnsToSubcriptions < ActiveRecord::Migration
   def up
    add_attachment :subscriptions, :image
  end               

  def down
    remove_attachment :subscriptions, :image
  end
end
