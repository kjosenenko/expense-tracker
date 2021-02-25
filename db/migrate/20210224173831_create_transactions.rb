class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :transaction_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
