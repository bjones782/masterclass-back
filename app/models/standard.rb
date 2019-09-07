class Standard < ApplicationRecord
    has_many :lessons, dependent: :destroy
    has_many :students, through: :lessons, dependent: :destroy
end
