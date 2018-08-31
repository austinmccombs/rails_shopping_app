class List < ApplicationRecord

  belongs_to :store
  has_many :items, dependent: :destroy
  validates :title, presence: true
 
 end