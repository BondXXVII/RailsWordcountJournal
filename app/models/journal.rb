class Journal < ApplicationRecord
    has_many :pages, dependent: :destroy
    validates :owner, presence: true, length: { minimum: 2, maximum: 8 }
end