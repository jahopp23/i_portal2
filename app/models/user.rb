class User < ApplicationRecord
    has_secure_password
    has_many :images, dependent: :destroy

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

      validates :alias, presence: true 
      validates :password, length: {minimum: 8 }, allow_nil: true


end
