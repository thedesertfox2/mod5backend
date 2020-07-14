class DmvPaperwork < ApplicationRecord
    has_many :user_dmv_paperworks
    has_many :users, through: :user_dmv_paperworks
end
