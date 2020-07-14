class UserDmvPaperwork < ApplicationRecord
    belongs_to :user
    belongs_to :dmv_paperwork
end
