class AddColLinkedList < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :order, :integer
  end
end
