require 'rails_helper'

describe "Edit author page", type: :feature do

  before :all do
    @author = FactoryBot.create(:author)
  end

  it "should render withour error" do
    visit edit_author_path(@author)
  end

end