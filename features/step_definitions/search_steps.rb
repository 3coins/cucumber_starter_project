Given /^I am on google website$/ do
    visit('/')
    @current_page = SearchPage.new
    expect(@current_page.has_search_field?).to be_true
    expect(@current_page.has_search_button?).to be_true
end

When /^I search for "(.*?)"$/ do |keyword|
    @current_page.search_field.set(keyword)
    @current_page.search_button.click
end

Then /^I should see results$/ do
    @current_page.wait_for_results
end

