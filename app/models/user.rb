class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze   

    validates :username, presence: true, length: { minimum: 3, maximum: 25 }
    # validates :password, presence: true, length: { minimum: 6, maximum: 255 }
    validates :email, presence: true, length: { minimum: 10, maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

end
