class UsersController < ApplicationController
    def show
        @creator_events = User.find(current_user.id).created_events
        @attended_events = User.find(current_user.id).attended_events
    end
end
