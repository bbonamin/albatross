require 'spec_helper'

describe "flights/index" do
  before(:each) do
    assign(:flights, [
      stub_model(Flight,
        :logfile => "Logfile"
      ),
      stub_model(Flight,
        :logfile => "Logfile"
      )
    ])
  end

  it "renders a list of flights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Logfile".to_s, :count => 2
  end
end
