class AddObjectiveAndMiscToPhases < ActiveRecord::Migration[7.0]
  def change
    add_column :phases, :objective, :string
    add_column :phases, :what_to_expect, :string
    add_column :phases, :length, :integer
  end
end
