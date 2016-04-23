Given(/^I am on the Team page$/) do
   visit("/team")
end

Then(/^I will see the text "([^"]*)"$/) do |text|
    page.has_text?('#{text}')
end

Then(/^I will see their title is "([^"]*)"$/) do |text|
    page.has_text?('#{text}')
end

Then(/^I will see the header "([^"]*)"$/) do |text|
    page.has_text?('#{text}')
    #Need to make sure it is in the correct h
end