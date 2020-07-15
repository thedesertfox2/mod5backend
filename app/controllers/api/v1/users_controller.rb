class Api::V1::UsersController < ApplicationController

    def index
        render json: User.all.as_json({:except => [:password_digest]})
    end
end