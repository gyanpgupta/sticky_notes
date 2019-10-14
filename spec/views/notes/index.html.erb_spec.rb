require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :title => "MyText",
        :name => "Name",
        :color => "Color"
      ),
      Note.create!(
        :title => "MyText",
        :name => "Name",
        :color => "Color"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "div>td", :text => "MyText".to_s, :count => 2
    assert_select "div>td", :text => "Name".to_s, :count => 2
    assert_select "div>td", :text => "Color".to_s, :count => 2
  end
end
