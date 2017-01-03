class Message < ApplicationRecord

  validates :name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, email: true, length: { maximum: 100 }
  validates :body, presence: true

end
