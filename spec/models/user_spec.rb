require 'spec_helper'

describe User do

  #valid
  it "has a valid factory" do
    expect(FactoryGirl.build(:sanyok)).to be_valid
  end


  #not valid
  it "has a not valid factory" do
    expect(FactoryGirl.build(:fail_user)).to_not be_valid
  end

  it "has a not valid factory" do
    expect(FactoryGirl.build(:fail_user2)).to_not be_valid
  end

  it "has a not valid factory" do
    expect(FactoryGirl.build(:fail_user3)).to_not be_valid
  end



end