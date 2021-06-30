class Review < ApplicationRecord
belongs_to :job
has_many :employees, through :jobs
has_many :users, through: :jobs

end
