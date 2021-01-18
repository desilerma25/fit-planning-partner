class User < ApplicationRecord
    has_secure_password
    
    has_many :workouts
    has_many :exercises, through: :workouts

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
