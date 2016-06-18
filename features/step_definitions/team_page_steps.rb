Given(/^I am on the Team page$/) do
   visit("/team")
end

Then(/^I will see their title is "([^"]*)"$/) do |text|
    page.has_text?('#{text}')
end

Then(/^I will see the header "([^"]*)"$/) do |text|
    page.has_text?('#{text}')
    #Need to make sure it is in the correct h
end

Then(/^I will see the text Who Else is on Tweetful\?$/) do
    expect(page).to have_content('Who Else is on Tweetful?')
end

Then(/^I will see the text Tweetful accounts in alpabetical order\.$/) do
    expect(page).to have_content('Tweetful accounts in alpabetical order.')
end

Then(/^I will see the text Testy McTesterson$/) do
    expect(page).to have_content('Testy McTesterson')
end

Then(/^I will see the text @TestUser2$/) do
    expect(page).to have_content('@TestUser2')
end

Then(/^I will see the text Unfollow$/) do
    expect(page).to have_content('Unfollow')
end

Then(/^I will see the text Follow$/) do
    expect(page).to have_content('Follow')
end

Then(/^I will see the text admin@tweetful.io$/) do
    expect(page).to have_content('admin@tweetful.io')
end

Then(/^I will see the text You are following @TestUser2$/) do
    expect(page).to have_content('You are following @TestUser2')
end

Then(/^I will see the text You are no longer following @TestUser2$/) do
    expect(page).to have_content('You are no longer following @TestUser2')
end

When(/^I click the Tweets page link$/) do
    click_on('Tweets', :match => :first)
end

Then(/^I will see the text Recent Tweets$/) do
    expect(page).to have_content('Recent Tweets')
end

Then(/^I will see the text Tweets$/) do
    expect(page).to have_content('Tweets')
end

Then(/^I will see the text @TestUserDev$/) do
    expect(page).to have_content('@TestUserDev')
end

Then(/^I will see the text @TestUser as the current user's username$/) do
    expect(page).to have_content('@TestUser')
end

Then(/^I will see the text Test User as the current user's username$/) do
    expect(page).to have_content('Test User')
end

Then(/^I will see the text Invalid email or password$/) do
    expect(page).to have_content('Invalid email or password')
end

Then(/^I will see the text Signed in successfully$/) do
    expect(page).to have_content('Signed in successfully')
end

Then(/^I will see the text Bill Billerson$/) do
    expect(page).to have_content('Bill Billerson')
end

Then(/^I will see the text Forrest Phillips$/) do
    expect(page).to have_content('Forrest Phillips')
end

Then(/^I will see their title is CTO$/) do
    expect(page).to have_content('CTO')
end

Then(/^I will see the text Making The Internet a Little More Thoughtful$/) do
    expect(page).to have_content('Making The Internet a Little More Thoughtful')
end

Then(/^I will see the text Testy McTesterson as the current user's full name$/) do
    expect(page).to have_content('Testy McTesterson')
end

Then(/^I will see the text Testessa Tester$/) do
    expect(page).to have_content('Testessa Tester')
end

Then(/^I will see the text Peter Lonestar$/) do
    expect(page).to have_content('Peter Lonestar')
end

Then(/^I will see their title is Founder$/) do
    expect(page).to have_content('Founder')
end