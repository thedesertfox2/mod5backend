class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :choice_text, :iscorrect
end
