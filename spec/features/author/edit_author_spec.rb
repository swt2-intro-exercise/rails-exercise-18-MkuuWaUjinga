require 'rails_helper'

describe "Edit author page", type: :feature do

  before :all do
    @author = FactoryBot.create(:author)
  end

  it "should render withour error" do
    visit edit_author_path(@author)
  end

  it "should save the changes" do
    visit edit_author_path(@author)
    page.fill_in 'author[last_name]', with: 'Bratan'
    find('input[type="submit"]').click

    @author.reload
    expect(@author.last_name).to eq "Bratan"
  end

end