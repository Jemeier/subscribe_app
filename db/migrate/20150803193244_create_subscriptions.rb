class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string  :name
      t.string  :description
      t.string  :tag
      t.string  :month_interval
      t.decimal :price

      t.references :user, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
