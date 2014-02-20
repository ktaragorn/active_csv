require 'spec_helper'
require 'active_csv'

describe ActiveCSV do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_empty
  end
end

describe "Loading existing CSV file" do
  Given(:the_class){TestCSV}
  Then{the_class.loaded?}
end

describe "Loading non-existing CSV file" do
  Given(:the_class){ 
    class NoCSV < ActiveCSV::Base
      csv "bogus.csv"
    end
    NoCSV
  }
  Then{!the_class.loaded?}
end