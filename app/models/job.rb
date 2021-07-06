class Job < ApplicationRecord
    belongs_to :user
    belongs_to :employee
    has_many :reviews

    
end
