class ProfileController < ApplicationController
    before_action :set_avatar, only: [:index]
    
    def index
    end

    private
    def set_avatar
        @avatar = current_user.avatar
        @avatar ||= "https://i.stack.imgur.com/34AD2.jpg"
    end
end