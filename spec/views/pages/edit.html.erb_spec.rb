require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      title: "MyString",
      slug: "MyString",
      body: "MyText",
      parent: nil,
      account: nil,
      position: 1
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input[name=?]", "page[title]"

      assert_select "input[name=?]", "page[slug]"

      assert_select "textarea[name=?]", "page[body]"

      assert_select "input[name=?]", "page[parent_id]"

      assert_select "input[name=?]", "page[account_id]"

      assert_select "input[name=?]", "page[position]"
    end
  end
end
