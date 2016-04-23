When(/^I am on the Tweets page$/) do
    visit tweets_path
    page.has_text?('Recent Tweets')
end

Then(/^I will see the list of recent Tweets$/) do
  page.has_css?('.list-unstyled')
end