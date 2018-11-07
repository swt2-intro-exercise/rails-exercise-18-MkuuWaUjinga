require 'rails_helper'

describe 'Show paper page' do

  it 'should show the authors name' do
    @paper = FactoryBot.create(:paper)
    visit paper_path(@paper)

    expect(page).to have_text("Alan Turing")
  end
end