require 'rails_helper'

describe 'Index paper page' do

  it 'should filter paper by year' do
    @paper1 = FactoryBot.create(:paper)
    visit papers_path
    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")

    visit papers_path(year:"1900")
    expect(page).to_not have_text("COMPUTING MACHINERY AND INTELLIGENCE")
  end
end