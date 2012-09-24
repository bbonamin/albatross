require 'spec_helper'

describe "flights/edit" do
  before(:each) do
    @flight = assign(:flight, stub_model(Flight,
      :logfile => "MyString"
    ))
  end

  it "renders the edit flight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flights_path(@flight), :method => "post" do
      assert_select "input#flight_logfile", :name => "flight[logfile]"
    end
  end
end
