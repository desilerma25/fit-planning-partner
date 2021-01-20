class User < ApplicationRecord
    has_secure_password
    
    has_many :workouts
    has_many :exercises, through: :workouts

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    def self.from_omniauth(response)
        User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.name = response[:info][:name]
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end
end
