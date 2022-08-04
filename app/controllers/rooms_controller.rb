class RoomsController < ApplicationController
    def index
        @new_room = Room.new
        @rooms = Room.all 
    end
end 