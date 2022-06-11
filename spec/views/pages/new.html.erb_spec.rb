require 'rails_helper'

RSpec.describe "pages/new", type: :view do
  before(:each) do
    assign(:page, Page.new(
      title: "MyString",
      slug: "MyString",
      body: "MyText",
      parent: nil,
      account: nil,
      position: 1
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do

      assert_select "input[name=?]", "page[title]"

      assert_select "input[name=?]", "page[slug]"

      assert_select "textarea[name=?]", "page[body]"

      assert_select "input[name=?]", "page[parent_id]"

      assert_select "input[name=?]", "page[account_id]"

      assert_select "input[name=?]", "page[position]"
    end
  end
end
