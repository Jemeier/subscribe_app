class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string      :version,        null: false
      t.integer     :month_interval, null: false
      t.decimal     :price,          null: false
      t.references  :product
    end
  end
end
