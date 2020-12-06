class Nutricionistum < ApplicationRecord
    has_many :nutricionista
        validates :nome, presence: true 
        validates :id, presence: true , uniqueness: true
        validates :email, presence: true, uniqueness: true 
        validates :exp, presence: true
end
