class Subscription < ActiveRecord::Base
  
  belongs_to  :product
  
  has_many    :user_subscriptions
  has_many    :users, through: :user_subscriptions


end

