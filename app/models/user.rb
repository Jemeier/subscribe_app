class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_subscriptions
  has_many :subscriptions, through: :user_subscriptions
end
