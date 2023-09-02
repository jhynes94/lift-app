class CreatePhases < ActiveRecord::Migration[7.0]
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :order
      t.string :objective
      t.string :what_to_expect
      t.integer :duration_days
      t.belongs_to :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
