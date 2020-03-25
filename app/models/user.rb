class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :agenda_items, dependent: :destroy
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: {with: VALID_EMAIL_REGEX},
            length: {maximum: 250},
            uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true

  def feed
    AgendaItem.where("user_id = ? and time > ? and time < ?", id, Time.now, Time.now + 24.hour)
  end
end
