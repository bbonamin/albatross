require 'spec_helper'

describe "flights/new" do
  before(:each) do
    assign(:flight, stub_model(Flight,
      :logfile => "MyString"
    ).as_new_record)
  end

  it "renders new flight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flights_path, :method => "post" do
      assert_select "input#flight_logfile", :name => "flight[logfile]"
    end
  end
end
