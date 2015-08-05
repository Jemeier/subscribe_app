class Product < ActiveRecord::Base

  has_many :subscriptions, dependent: :destroy
  validates_uniqueness_of :name
end
