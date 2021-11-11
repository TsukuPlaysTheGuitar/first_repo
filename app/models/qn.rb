class Qn < ApplicationRecord
    validates :question, {presence: true, uniqueness: true}
    validates :answer, {presence: true, uniqueness: true}
end
