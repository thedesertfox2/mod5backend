class User < ApplicationRecord
    has_many :user_dmv_paperworks
    has_many :dmv_paperworks, through: :user_dmv_paperworks
end
