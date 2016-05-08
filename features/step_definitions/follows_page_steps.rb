Given(/^I am on the Follows page$/) do
    visit('/follows')
end

When(/^I click the first Follow button$/) do 
    binding.pry
    click_on('input.btn.btn-primary.mar-top-5')
end
