class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.integer :amount

      t.integer :user_id

      t.timestamps
    end

    add_index :coins, :user_id
  end
end
