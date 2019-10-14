require 'rails_helper'

RSpec.describe "notes/new", type: :view do
  before(:each) do
    assign(:note, Note.new(
      :title => "MyText",
      :name => "MyString",
      :color => "MyString"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "textarea[name=?]", "note[title]"

      assert_select "input[name=?]", "note[name]"

      assert_select "input[name=?]", "note[color]"
    end
  end
end
