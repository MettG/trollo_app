class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :eta
      t.integer :priority, unique: true
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
