require 'rails_helper'

describe "Index author page", type: :feature do

  before :all do
    @author = FactoryBot.create(:author)
  end
  it "should render withour error" do
    visit authors_path
  end

  it "should have a link to the author's page" do
    visit authors_path
    expect(page).to have_link 'Show', href: author_path(@author)
  end

  it "should have a link to create a new author" do
    visit authors_path
    expect(page).to have_link 'New Author', href: new_author_path
  end

  it "should have a link to the author's edit page" do
    visit authors_path
    expect(page).to have_link 'Edit', href: edit_author_path(@author)
  end
end