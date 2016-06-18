When(/^I am on the Tweets page$/) do
    visit tweets_path
    page.has_text?('Recent Tweets')
end

Then(/^I will see the list of recent Tweets$/) do
    page.has_css?('.list-unstyled')
end

When(/^I enter a Tweet$/) do
    fill_in('tweet[content]', :with => 'Hello, I love to Tweet.')
    click_on('Submit Your Tweet')
end

Then(/^I will see the author of the most recent Tweet's full name$/) do
    page.has_css?('.fullName')
end

Then(/^I will see the author of the most recent Tweet's username$/) do
    page.has_css?('.userName')
end

Then(/^I will see when the most recent Tweet was created$/) do
    page.has_css?('.createdAt')
end

Then(/^I will see the content of the most recent Tweet$/) do
    page.has_css?('.tweetContent')
end

Then(/^I will see the text "([^"]*)" as the username of the author of the most recent Tweet$/) do |text|
    expect(page).to have_css '.userName', text: "#{text}"
end

Then(/^I will see the text "([^"]*)" as the full name of the author of the most recent Tweet$/) do |text|
    expect(page).to have_css '.fullName', text: "#{text}"
end