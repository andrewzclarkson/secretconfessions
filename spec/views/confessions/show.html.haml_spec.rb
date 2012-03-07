require 'spec_helper'

describe "confessions/show" do
  before(:each) do
    @confession = assign(:confession, stub_model(Confession,
      :areacode => "Areacode"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Areacode/)
  end
end
