class UserDmvPaperworksController < ApplicationController

    def index
        render json: UserDmvPaperwork.all
    end

    def create
        render json: UserDmvPaperwork.create(user_id: params['user_id'], dmv_paperwork_id: params['dmv_paperwork_id'])
    end

    def destroy
        deleted = UserDmvPaperwork.destroy(params[:id])
        if deleted.errors.any?
            render json: {
                status: :unprocessable_entity, # 422
                message: MESSAGES_FAILED
            }
        else
            render json: {
                status: :ok, # 200
                message: MESSAGES_SUCCESS
            }
        end
    end
end
