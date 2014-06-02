class HomePage
  URL = {development: 'http://localhost:3000/'}

  attr_reader :browser

  def self.execute(&block)
    home_page = self.new
    home_page.instance_eval(&block)
    home_page.close
  end

  def initialize
    @browser = Watir::Browser.start URL[:development], :phantomjs
  end

  def table
    results = []
    @browser.trs[1..-1].each do |row|
      result = []
      row.tds.each do |col|
        result.push(col.text)
      end
      results.push(result)
    end
    results
  end

  def close
    @browser.close
  end
end

Given(/^I go to the homepage$/) do
  @page = HomePage
end

Given(/^the following books exists:$/) do |table|
  table.hashes.each do |row|
    Book.create(row)
  end
end

Then(/^I should should see a table of books sorted by rank, and title like this:$/) do |test_table|
  @page.execute do
    [test_table.hashes, table].transpose.each do |test_row, given_row|
      row = given_row.clone
      row.pop.should == test_row["isbn_13"]
      row.pop.should == test_row["isbn_10"]
      row.pop.should == test_row["author"]
      row.pop.should == test_row["title"]
    end
  end
end
