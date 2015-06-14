require 'spec_helper'

describe Bostonian do

describe "#new"
  it "takes one parameter and returns a Bostonian object" do
    @bostonian = Bostonian.new "Hey thea, how why ya?"
    expect(@bostonian).to be_a Bostonian
  end
end

describe "#translate" do
  it "takes string from Bostonian initialization and translates to proper English" do
    @bostonian = Bostonian.new "Didja get the cahds at the stoah? We wicked need them!"
    expect(@bostonian.translate).to eq "Did you get the cards at the store? We really need them!"
  end
end

describe "#translate" do
  it "takes string from Bostonian initialization and translates to proper English" do
    @bostonian = Bostonian.new "Hey thea, how why ya?"
    expect(@bostonian.translate).to eq "Hey there, how are you?"
  end
end

describe "#translate" do
  it "takes string from Bostonian initialization and translates to proper English" do
    @bostonian = Bostonian.new "Hey thea, how why ya? This is wicked pissa, right?"
    expect(@bostonian.translate).to eq "Hey there, how are you? This is really cool, right?"
  end
end

describe "#translate" do
  it "takes string from Bostonian initialization and translates to proper English" do
    @bostonian = Bostonian.new "Pahk the cah in hahvid yahd!"
    expect(@bostonian.translate).to eq "Park the car in harvard yard!"
  end
end

describe "#translate" do
  it "takes string from Bostonian initialization and translates to proper English" do
    @bostonian = Bostonian.new "How fah is it to the packie?"
    expect(@bostonian.translate).to eq "How far is it to the liquor store?"
  end
end

describe "#translate" do
  it "takes string from Bostonian initialization and translates to proper English" do
    @bostonian = Bostonian.new "Hey theah! How why ya? Did you bring me the chowdah I asked foah? No?  Oh, well, what didja want tah translate?"
    expect(@bostonian.translate).to eq "Hey there! How are you? Did you bring me the chowder i asked for? No? Oh, well, what did you want to translate?"
  end
end


