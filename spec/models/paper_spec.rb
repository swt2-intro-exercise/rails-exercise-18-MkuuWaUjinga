require 'rails_helper'

describe Paper, type: :model do

  it "should be valid" do
    paper = Paper.new
    expect(paper).to_not be_valid
  end
end
