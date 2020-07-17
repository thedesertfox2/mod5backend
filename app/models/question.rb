class Question < ApplicationRecord
    has_many :choices
    accepts_nested_attributes_for :choices
    
end
