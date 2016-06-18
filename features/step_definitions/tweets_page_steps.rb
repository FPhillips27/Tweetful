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

Then(/^I will see the text @TestUser in the list of Tweets$/) do
    find('.list-unstyled').should have_content('@TestUser')
end
