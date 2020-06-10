class Project < ApplicationRecord
    has_many :shapes
    belongs_to :user

  
end
