class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :author_id
      t.integer :assignee_id
      t.string :state
      t.date :expired_at

      add_reference :tasks, :users, column: :author_id, foreign_key: true
      add_reference :tasks, :users, column: :assignee_id, foreign_key: true

      t.timestamps
    end
  end
end
