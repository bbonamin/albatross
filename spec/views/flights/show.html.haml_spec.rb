require 'spec_helper'

describe "flights/show" do
  before(:each) do
    @flight = assign(:flight, stub_model(Flight,
      :logfile => "Logfile"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Logfile/)
  end
end
