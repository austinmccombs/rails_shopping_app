class Store < ApplicationRecord
    has_many:lists, dependent: :destroy
    validates :name, presence: true
    # validations

    # associations

    # callbacks

    # instanc / class methods
end
