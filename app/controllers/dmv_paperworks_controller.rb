class DmvPaperworksController < ApplicationController

    def index
        render json: DmvPaperwork.all
    end
end
