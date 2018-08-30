class Item < ApplicationRecord
  belongs_to :list
  validates :name, presence: true

  before_create :put_item_in_stock



  def put_item_in_stock
    self.in_stock = true
  end

end

