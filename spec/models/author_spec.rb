require 'rails_helper'

describe Author, type: :model do
  it "should have a first name, last name and homepage field and a method for the author's full name" do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.de/Alan_Turing")
    expect(author.first_name).to eq "Alan"
    expect(author.last_name).to eq "Turing"
    expect(author.homepage).to eq "http://wikipedia.de/Alan_Turing"
    expect(author.name).to eq "Alan Turing"
  end
end
