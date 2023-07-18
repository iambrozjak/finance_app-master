require "test_helper"

  #test "should get report_by_category" do
    #Operation.create(name: "qwe", d)
    #get reports_report_by_category_url
    #assert_response :success
  #end

  # test "should get report_by_category" do
  #   get reports_report_by_category_url
  #   assert_response :success
  # end

  # test "should get report_by_dates" do
  #   get reports_report_by_dates_url
  #   assert_response :success
  # end

  test "should get report_by_dates" do
    get '/reports/report_by_dates'
    assert_response :success
  end




end



