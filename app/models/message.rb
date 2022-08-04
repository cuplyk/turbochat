class Message < ApplicationRecord
    has_many :likes, dependent: :destroy # dependent: :destroy means that when a message is deleted, all of its likes are deleted
    belongs_to :user
    belongs_to :room

    scope :sorted, -> { order(id) }
    validates :body, presence: true 
end
