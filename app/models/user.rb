class User < ApplicationRecord
  has_many :rooms, dependent: :destroy # dependent: :destroy means that when a user is deleted, all of their rooms are deleted
  has_many :messages, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
end
