class Api::V1::UsersController < ApplicationController

    def index
        render json: User.all.as_json({:except => [:password_digest]})
    end

    def getpaperworks
        render json: UserDmvPaperwork.find_by(user_id: params[:id])
    end

    def getquestions
        questions = []
        question = []
        hash = {}
        if params[:id] === 'All'
            questions = Question.all
        else
            questions = Question.all.sample(params[:id].to_i)
        end
        questions.each do |q|
            question = q.question
        end
        byebug
        render json: questions 
    end
end