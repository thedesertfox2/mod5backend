class TestSerializer < ActiveModel::Serializer
  attributes :id, :number_of_questions, :number_of_correct, :user_id
end
