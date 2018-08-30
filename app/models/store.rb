class Store < ApplicationRecord
    has_many:lists, dependent: :destroy
    validates :name, presence: true


    def self.find_store_name(x)
        where name = "x"
    end
  
end
