class Api::V1::UsersController < ApplicationController

    def index
        render json: User.all.as_json({:except => [:password_digest]})
    end

    def getpaperworks
        render json: UserDmvPaperwork.find_by(user_id: params[:id])
    end
end