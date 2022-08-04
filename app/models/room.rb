class Room < ApplicationRecord
    has_many :messages, -> { sorted }, dependent :destroy  #    dependent: :destroy means that when a room is deleted, all of its messages are deleted
    belongs_to :user # user is the owner of the room
    before_create {self.title = SecureRandom.hex(3)} # SecureRandom.hex(3) is a method that generates a random string of length 3
end
