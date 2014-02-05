require 'spec_helper'

describe Year do

  it "has valid factory" do
    expect(build(:year)).to be_valid
  end

  it "is invalid without christian_era" do
    expect(build(:year, christian_era: nil)).to have(2).errors_on(:christian_era)
  end

  it "is invalid if christian_era is negative" do
    expect(build(:year, christian_era: -1)).to have(1).errors_on(:christian_era)
  end

  it "is invalid if christian_era is zero" do
    expect(build(:year, christian_era: 0)).to have(1).errors_on(:christian_era)
  end

  it "is invalid without name_of_era" do
    expect(build(:year, name_of_era: nil)).to have(1).errors_on(:name_of_era)
  end

  it "is invalid without year_of_the_era" do
    expect(build(:year, year_of_the_era: nil)).to have(2).errors_on(:year_of_the_era)
  end

  it "is invalid if year_of_the_era is negative" do
    expect(build(:year, year_of_the_era: -1)).to have(1).errors_on(:year_of_the_era)
  end

  it "is invalid if year_of_the_era is zero" do
    expect(build(:year, year_of_the_era: 0)).to have(1).errors_on(:year_of_the_era)
  end

end
