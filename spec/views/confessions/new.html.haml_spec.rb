require 'spec_helper'

describe "confessions/new" do
  before(:each) do
    assign(:confession, stub_model(Confession,
      :areacode => "MyString"
    ).as_new_record)
  end

  it "renders new confession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => confessions_path, :method => "post" do
      assert_select "input#confession_areacode", :name => "confession[areacode]"
    end
  end
end
