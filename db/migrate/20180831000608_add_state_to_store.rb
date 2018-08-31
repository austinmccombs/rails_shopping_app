class AddStateToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :state, :integer, index: true, default: 0
  end
end
