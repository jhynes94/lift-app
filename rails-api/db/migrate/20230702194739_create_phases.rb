class CreatePhases < ActiveRecord::Migration[7.0]
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :order
      t.belongs_to :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
