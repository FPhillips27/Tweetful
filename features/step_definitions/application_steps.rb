Given(/^that I am logged in as our test user$/) do
    visit '/'
    find('.login').fill_in('user_email', :with => 'testuser@invalid.com')
    find('.login').fill_in('user_password', :with => 'testpassword')
    first('input[type="submit"]').click
    page.has_text?('Test User')
    page.has_text?('Sign out')
end

Then(/^I will see the text "([^"]*)" as the current user's username$/) do |name|
    page.has_text?('#{name}')
end

Then(/^I will see the text "([^"]*)" as the current user's full name$/) do |fullName|
    page.has_text?('#{fullName}')
end
