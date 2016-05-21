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
