class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
