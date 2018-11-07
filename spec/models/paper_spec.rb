require 'rails_helper'

describe Paper, type: :model do

  it "should be invalid if left empty" do
    paper = Paper.new
    expect(paper).to_not be_valid
  end

  it "should be invalid if year is not numerical" do
    paper = Paper.new(title: "On LSTMs", venue: "KDD", year: "hunder")
    expect(paper).to_not be_valid
  end

  it "should have authors" do
    @author = FactoryBot.create(:paper)
  end


end
