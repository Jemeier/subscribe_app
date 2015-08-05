class AddImageNumberToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_num, :integer
  end
end
