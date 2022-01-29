class UsersController < ApplicationController
    before_action :authenticate_user!
    include UserHelper

    def show
        @user = current_user
        @created_events = @user.created_events
    end
end