class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :hp, default: 100
      t.integer :credits, default: 0

      t.timestamps
    end
  end
end
