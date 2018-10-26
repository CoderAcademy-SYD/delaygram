class ProfileController < ApplicationController
    before_action :set_avatar, only: [:index]
    
    def index
    end

    private
    def set_avatar
        if current_user.avatar
            @avatar = current_user.avatar.image_url
        else
            @avatar ||= "https://i.stack.imgur.com/34AD2.jpg"
        end
    end
end