Given(/^I am on the Follows page$/) do
    visit('/follows')
end

When(/^I click the first Follow button$/) do 
    click_on('Follow')
end

When(/^I click the first Unfollow button$/) do 
    binding.pry
    click_on('Unfollow')
end

When(/^I click the Follow page link$/) do
    click_on('Follow Users', :match => :first)
end

When(/^I wait until I see the text Unfollow$/) do
    find('#wrapper').should have_content('Unfollow')
end


When(/^I wait until I see the Tweets page/) do
    page.should have_content('Recent Tweets')
end


Then(/^I will see the Unfollow button$/) do
    page.should have_selector("input[type=submit][value='Unfollow']")
end
