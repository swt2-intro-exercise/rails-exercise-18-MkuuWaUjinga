require 'rails_helper'

describe Author, type: :model do

  before :all do
    @author = FactoryBot.create(:author)
  end
  it "should have a first name, last name and homepage field and a method for the author's full name" do
    expect(@author.first_name).to eq "Alan"
    expect(@author.last_name).to eq "Turing"
    expect(@author.homepage).to eq "http://wikipedia.de/Alan_Turing"
    expect(@author.name).to eq "Alan Turing"
  end

  it "should be invalid if there is no last name" do
    author = Author.new(first_name: "Alan", homepage: "http://wikipedia.de/Alan_Turing")
    expect(author).to_not be_valid
  end

end
