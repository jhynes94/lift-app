class AddModelsFromLucid < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    create_table :phases do |t|
      t.string :name
      t.integer :order
      t.string :objective
      t.string :what_to_expect
      t.integer :length
      t.belongs_to :program, null: false, foreign_key: true

      t.timestamps
    end

    create_table :workouts do |t|
      t.string :name
      t.string :description
      t.string :order
      t.belongs_to :phase, null: false, foreign_key: true

      t.timestamps
    end

    create_table :exercises do |t|
      t.string :name
      t.integer :order
      t.belongs_to :workouts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
