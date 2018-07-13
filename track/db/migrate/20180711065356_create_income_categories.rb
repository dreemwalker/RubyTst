class CreateIncomeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :income_categories do |t|
      t.integer :userID
      t.string :name

      t.timestamps
    end
  end
end
