require 'spec_helper'
require 'active_csv'

describe "Finding  rows" do
  Given(:csv_class) {TestCSV}

  Then{!csv_class.find(1).nil?}
  context "invalid id" do
    When(:result){csv_class.find(99)}
    Then{result == Failure(RuntimeError,/not found/)}
  end
  context "Duplicate ids" do
    When(:result){csv_class.find(3)}
    Then{result == Failure(RuntimeError,/not unique/)}
  end
end

describe "Instance Methods - Read" do
  Given(:csv_class) {TestCSV}

  When(:row1){csv_class.find(1)}
  When(:row2){csv_class.find(2)}

  Then{row1.name == "apple"}
  Then{row2.count == 3}
end

describe "Instance Methods - Write" do

end