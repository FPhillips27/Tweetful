When(/^I am on the About page$/) do
   visit("/about")
end

Then(/^I will see the paragraph heading “Company History”$/) do
    page.has_text?('Company History')
end

Then(/^I will see the paragraph heading “About Tweetful”$/) do
    page.has_text?('About Tweetful')
end

Then(/^I will see the paragraph heading “What Makes Us Different”$/) do
    page.has_text?('What Makes Us Different')
end
