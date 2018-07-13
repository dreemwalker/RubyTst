class ReportController < ApplicationController
  def index
  	  @incomes = Income.where(userID: current_user.id).
  	    joins("JOIN income_categories ON incomes.categoryID = income_categories.id")
  	    .select("incomes.*, income_categories.name AS catname")
  	  @expenses = Expense.where(userID: current_user.id).
    	joins("JOIN expense_categories ON expenses.categoryID = expense_categories.id").
        select("expenses.*, expense_categories.name AS catname")
  end
end
