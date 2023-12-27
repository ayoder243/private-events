class UsersController < ApplicationController
    def show
        @creator_events = User.find(current_user.id).created_events 
    end
end
