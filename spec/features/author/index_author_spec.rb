require 'rails_helper'

describe "Index author page", type: :feature do

  it "should render withour error" do
    visit authors_path
  end

  it "should have link to create a new author" do
    visit authors_path

    expect(page).to have_link 'New Author', href: new_author_path
  end
end