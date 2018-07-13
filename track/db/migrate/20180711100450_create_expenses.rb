class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :userID
      t.integer :categoryID
      t.integer :sum
      t.date :date

      t.timestamps
    end
  end
end
