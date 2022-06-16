class CreateRewards < ActiveRecord::Migration[7.0]
  def change
    create_table :rewards do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, default: "New reward"
      t.integer :cost, default: 10
      t.integer :order, default: 0
      t.datetime :expire_at
      t.integer :minutes, default: 0
      t.integer :uses, default: 0

      t.timestamps
    end
  end
end
