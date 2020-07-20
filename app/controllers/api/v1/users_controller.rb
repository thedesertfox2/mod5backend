class Api::V1::UsersController < ApplicationController

    def index
        render json: User.all.as_json({:except => [:password_digest]})
    end

    def getpaperworks
        render json: UserDmvPaperwork.find_by(user_id: params[:id])
    end

    def getquestions
        questions = []
        
        question = ''
        finalArr = []
        

        if params[:id] === 'All'
            questions = Question.all
        else
            questions = Question.all.sample(params[:id].to_i)
        end

        questions.each do |q|
            choices = []
            correct = ''
            incorrect = []
            
            # byebug
            

            choices = Choice.where(question_id: q.id)
            # byebug
            choices.each do |c|
                if c.iscorrect === true
                    correct = c.choice_text
                elsif c.iscorrect === false
                    incorrect.push(c.choice_text)
                end
            end
            
            

            finalArr.push(question = [ 
                'question' => q.question, 
                'choices' => {
                    'correct' => correct,
                    'incorrect' => incorrect
                }
            ])
            
            
        end
        
        render json: {question: finalArr} 
    end


end