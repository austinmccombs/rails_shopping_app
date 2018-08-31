class Store < ApplicationRecord
    has_many :lists
   
    before_destroy :delete_associations
   
    # validations
    validates :name, presence: true
    validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create
    validates_format_of :phone, with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/, on: :create
   
    enum state: { active: 0, inactive: 1}
   
   
    # callbacks
   
    def self.find_store_name(name)
      where(name: name)
    end
   
   
    # Instance/ Class Methods
    def remove_items
      self.lists.joins(:items).destory_all
    end
   
    private
   
    def delete_associations
      self.lists.joins(:items).destroy_all if self.lists.joins(:items).present?
      self.lists.destroy_all if self.lists.present?
    end
   
   
   end  