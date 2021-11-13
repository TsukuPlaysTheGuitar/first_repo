class User < ApplicationRecord
    validates :name, {presence: true, uniqueness: true, length: {maximum: 16}}
    validates :password, {presence: true, length: {minimum: 8}}
end
