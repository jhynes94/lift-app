class CreateProgressions < ActiveRecord::Migration[7.0]
  def change
    create_table :progressions do |t|
      t.integer :phase
      t.integer :workout
      t.integer :exercise
      t.integer :set
      t.belongs_to :program, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
