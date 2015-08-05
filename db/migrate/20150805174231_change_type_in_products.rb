class ChangeTypeInProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.rename :type, :format
    end
  end
end
