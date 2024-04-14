class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.text :notes
      t.integer :minutes

      t.timestamps
    end
  end
end
