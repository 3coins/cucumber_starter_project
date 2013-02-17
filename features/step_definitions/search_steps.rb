Given /^I am on (.*) website$/ do |page_name| 
    @current_page = page_for(page_name).new
    @current_page.load
    if @current_page.respond_to?('has_required_elements?')
        expect(@current_page.has_required_elements?).to be_true
    else
        expect(@current_page.all_there?).to be_true
    end    
end

When /^I search for "(.*?)"$/ do |keyword|
    @current_page.search_field.set(keyword)
    @current_page.search_button.click
end

Then /^I should see results$/ do
    @current_page.wait_for_results
end

Then /^I should see the top stories section$/ do
    expect(@current_page.has_top_stories?).to be_true
end

