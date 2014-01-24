require 'spec_helper'

describe Year do

  before do
    @year = Year.new(
      christian_era: 2014,
      name_of_era: '平成',
      year_of_the_era: 25
    )
  end

  subject { @year }

  it { should be_valid }

  it { should respond_to :christian_era }
  it { should respond_to :name_of_era }
  it { should respond_to :year_of_the_era }

  describe "when christian_era is not present" do
    before { @year.christian_era = '' }
    it { should_not be_valid }
  end

  describe "when christian_era is negative" do
    before { @year.christian_era = -1 }
    it { should_not be_valid }
  end

  describe "when christian_era is zero" do
    before { @year.christian_era = 0 }
    it { should_not be_valid }
  end

  describe "when name_of_era is not present" do
    before { @year.name_of_era = ' ' }
    it { should_not be_valid }
  end

  describe "when year_of_the_era is not present" do
    before { @year.year_of_the_era = '' }
    it { should_not be_valid }
  end

  describe "when year_of_the_era is negative" do
    before { @year.year_of_the_era = -1 }
    it { should_not be_valid }
  end

  describe "when year_of_the_era is zero" do
    before { @year.year_of_the_era = 0 }
    it { should_not be_valid }
  end

end
