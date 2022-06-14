require 'rails_helper'
require 'spec_helper'


RSpec.describe Page, type: :model do
  it "has a valid factory" do
    page = create(:page)
    expect(page.title.presence).to be_truty  
  end

  it "creates a slug" do
    page = create(:page, title: "New Page Title")
    expect(page.slug).to eq("new-page-title")
    page.update(title: "Another title")
    expect(page.slug).to eq("another-title")
  end

  it "is a tree of ordered pages" do
    page1 = create(:page, title: "Page 1")
    expect(page1.position).to eq(1)
    page2 = create(:page, title: "Page 2")
    expect(page2.position).to eq(2)
    page3 = create(:page, title: "Page 3")
    expect(page3.position).to eq(3)

    page1_1 = page1.children.create(title: "Page 1.1")

  end
  
  
  
end
