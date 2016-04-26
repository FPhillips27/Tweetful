Given(/^I am on the Follows page$/) do
    visit('/follows')
end

When(/^I click "([^"]*)"$/) do |selector|
  find("#{selector}").click
end

