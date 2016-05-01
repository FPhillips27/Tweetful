Given(/^I am on the Follows page$/) do
    visit('/follows')
end

When(/^I click the first Follow button$/) do 
    first( 'input.btn.btn-primary.mar-top-5').click
end
