class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :task_name
      t.text :task_body
      t.string :task_comment

      t.timestamps
    end
  end
end
