class AvatarsController < ApplicationController    
    before_action :avatar_params, only: [:update]
    
    def edit
        @avatar = current_user.avatar
        @avatar ||= Avatar.new
    end

    def update
        #@avatar = current_user.avatar.create(avatar_params)
        @avatar = Avatar.new(avatar_params)
        @avatar.user_id = current_user.id
        @avatar.save
        
        redirect_to root_path
    end

    private
    def avatar_params
        params.require(:avatar).permit(:image)
    end
end