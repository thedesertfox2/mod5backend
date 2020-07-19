class TestsController < ApplicationController

    def index
        render json: Test.all
    end

    def create
        new_test = Test.create(user_id: params['user_id'], number_of_correct: params['number_of_correct'], number_of_questions: params['number_of_questions'])
        render json: new_test
        
    end

    # t.integer "number_of_questions"
    # t.integer "number_of_correct"
    # t.integer "user_id"
end
