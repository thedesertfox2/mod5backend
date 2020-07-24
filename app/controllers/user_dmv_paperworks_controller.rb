class UserDmvPaperworksController < ApplicationController

    def index
        render json: UserDmvPaperwork.all
    end

    def create
        UserDmvPaperwork.create(user_id: params['user_id'], dmv_paperwork_id: params['dmv_paperwork_id'])
        
        render json: User.find(params['user_id']).to_json(:except => [:password_digest], :include => [:dmv_paperworks])
    end

    def destroy
        # byebug
        arr = params[:id].split(',')
        paperwork = arr[0]
        user_id = arr[1]
        delete_me = UserDmvPaperwork.find_by(user_id: user_id, dmv_paperwork_id: paperwork)
        deleted = UserDmvPaperwork.destroy(delete_me.id)
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
