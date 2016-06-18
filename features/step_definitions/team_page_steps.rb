Given(/^I am on the Team page$/) do
   visit("/team")
end

Then(/^I will see their title is "([^"]*)"$/) do |text|
    expect(page).to have_css 'h3', text: "#{text}"
end

Then(/^I will see the header "([^"]*)"$/) do |text|
    page.has_text?('#{text}')
    #Need to make sure it is in the correct h
end

Then(/^I will see the text "([^"]*)"$/) do |text|
    expect(page).to have_content("#{text}")
end

When(/^I click the Tweets page link$/) do
    click_on('Recent Tweets', :match => :first)
end

Then(/^I will see the text @TestUser as the current user's username$/) do
    expect(page).to have_content('@TestUser')
end

Then(/^I will see the text Test User as the current user's username$/) do
    expect(page).to have_content('Test User')
end

Then(/^I will see the text Testy McTesterson as the current user's full name$/) do
    expect(page).to have_content('Testy McTesterson')
end
