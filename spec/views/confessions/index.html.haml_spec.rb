require 'spec_helper'

describe "confessions/index" do
  before(:each) do
    assign(:confessions, [
      stub_model(Confession,
        :areacode => "Areacode"
      ),
      stub_model(Confession,
        :areacode => "Areacode"
      )
    ])
  end

  it "renders a list of confessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Areacode".to_s, :count => 2
  end
end
