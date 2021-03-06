require 'spec_helper'

describe "sponsors/index.html.erb" do
  before(:each) do
    assign(:sponsors, [
      stub_model(Sponsor,
        :email => "Email",
        :name => "Name"
      ),
      stub_model(Sponsor,
        :email => "Email",
        :name => "Name"
      )
    ])
  end

  it "renders a list of sponsors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
