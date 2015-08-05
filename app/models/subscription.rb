class Subscription < ActiveRecord::Base

  belongs_to  :products
  has_many    :user_subscriptions
  has_many    :users, through: :user_subscriptions

  
end
