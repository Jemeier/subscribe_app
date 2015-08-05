class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string    :name,        null: false
      t.string    :description
      t.string    :category
      t.string    :type
      t.string    :image_file_name
      t.string    :image_content_type
      t.integer   :image_file_size
      t.datetime  :image_updated_at

    end
  end
end
