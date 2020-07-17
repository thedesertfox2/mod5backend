class UserDmvPaperworksController < ApplicationController

    def create
        render json: UserDmvPaperwork.create(user_id: params['user_id'], dmv_paperwork_id: params['dmv_paperwork_id'])
    end
end
