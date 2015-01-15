require 'spec_helper'

describe Bicycle do

  #valid
  it "has a valid factory" do
    expect(FactoryGirl.build(:valid_bike1)).to be_valid
  end

  it "has a valid factory" do
    expect(FactoryGirl.build(:valid_bike2)).to be_valid
  end



  #not valid
  it "false bike has no title" do
    expect(FactoryGirl.build(:false_bike1)).to_not be_valid
  end

  it "false bike has no key" do
    expect(FactoryGirl.build(:false_bike2)).to_not be_valid
  end

  it "false bike has no short key" do
    expect(FactoryGirl.build(:false_bike3)).to_not be_valid
  end

  it "false bike has no bad status" do
    expect(FactoryGirl.build(:false_bike4)).to_not be_valid
  end

  it "false bike has no bad status" do
    expect(FactoryGirl.build(:false_bike5)).to_not be_valid
  end



end