class CreateTasksAndTags < ActiveRecord::Migration[7.0]
  def change
    create_enum :task_type, ["todo", "daily", "habit"]

    create_table :tasks do |t|
      t.string :title
      t.integer :value
      t.enum :type, enum_type: "task_type", default: "todo", null: false
      t.integer :order, default: 0
      t.datetime :completed_at
      t.integer :minutes_to_complete, default: 0
      t.integer :completed_count, default: 0

      t.timestamps
    end

    create_table :tags do |t|
      t.string :title

      t.timestamps
    end

    create_table :tasks_tags, id: false do |t|
      t.belongs_to :tasks
      t.belongs_to :parts
    end
  end
end
