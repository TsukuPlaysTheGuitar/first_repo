class User < ApplicationRecord
    validates :name, {presence: true, uniqueness: true}
    validates :password, {presence: true, length: {minimum: 8}}
end
