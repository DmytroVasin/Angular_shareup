class Share < ActiveRecord::Base
  belongs_to :from, foreign_key: 'from_user_id', class_name: 'User'
  belongs_to :to, foreign_key: 'to_user_id', class_name: 'User'

  validates :to_email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Incorrect email' }
end
