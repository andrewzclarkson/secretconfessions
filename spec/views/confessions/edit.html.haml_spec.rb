require 'spec_helper'

describe "confessions/edit" do
  before(:each) do
    @confession = assign(:confession, stub_model(Confession,
      :areacode => "MyString"
    ))
  end

  it "renders the edit confession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => confessions_path(@confession), :method => "post" do
      assert_select "input#confession_areacode", :name => "confession[areacode]"
    end
  end
end
