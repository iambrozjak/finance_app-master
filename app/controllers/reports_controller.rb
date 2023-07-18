class ReportsController < ApplicationController
  def index
    
  end

  def report_by_category
    @report_by_category = Operation.select(:'categories.name').joins(:category).where(odate: params[:start_date]..params[:end_date]).group("categories.name").sum(:amount)
    @symas = @report_by_category.values
    @sum = @symas.reduce(0) { |sum, num| sum + num }
    @cat_names = @report_by_category.keys
  end

  def report_by_dates
    @report_by_dates = Operation.where(odate: params[:start_date]..params[:end_date]).order(:id)
  end


  def report_by_dates_graph
  
    operation_date = Operation.where(odate: params[:start_date]..params[:end_date]).map {|o| [o.odate.to_s, o.amount] }
    @dates = operation_date.map {|e| e[0] }
    @amounts = operation_date.map {|e| e[1] }
  end  
end
