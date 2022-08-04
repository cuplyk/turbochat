class Room < ApplicationRecord
    belongs_to :user # user is the owner of the room
    before_create {self.title = SecureRandom.hex(3)} # SecureRandom.hex(3) is a method that generates a random string of length 3
end
