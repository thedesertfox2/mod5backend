class Api::V1::AuthController < ApplicationController

    def create 
        # byebug
        user = User.find_by(username: params['username'], password: params['password'])
        
        if user 
            render json: {message: "log in", user_data: user, error: false} #user_dmv_paperwork: user.dmv_paperworks}
        else
            render json: {message: 'You need to be better', error: true}
        end
    end

end