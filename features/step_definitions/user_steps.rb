Given(/^a valid user$/) do
  @user = User.create!({
             :email => "testuser@invalid.com",
             :name => "Testy McTesterson",
             :username => "TestUser",
             :password => "testpassword",
             :password_confirmation => "testpassword"
           })
end

Given(/^a second valid user$/) do
  @user = User.create!({
             :email => "testuser2@invalid.com",
             :name => "Testessa Tester",
             :username => "TestUser2",
             :password => "testpassword",
             :password_confirmation => "testpassword"
           })
end

Given(/^I am logged in as our test user$/) do
    visit '/'
    find('.login').fill_in('user_email', :with => 'testuser@invalid.com')
    find('.login').fill_in('user_password', :with => 'testpassword')
    first('input[type="submit"]').click
    page.has_text?('TestUser')
    page.has_text?('Sign out')
    page.has_no_text?('Invalid email or password.')
end

Given(/^I am logged in as our second test user$/) do
    visit '/'
    find('.login').fill_in('user_email', :with => 'testuser2@invalid.com')
    find('.login').fill_in('user_password', :with => 'testpassword')
    first('input[type="submit"]').click
    page.has_text?('TestUser2')
    page.has_text?('Sign out')
    page.has_no_text?('Invalid email or password.')
end

When(/^I try to login as a user without valid credentials$/) do
    visit '/'
    find('.login').fill_in('user_email', :with => 'alexanderhamilton@invalid.com')
    find('.login').fill_in('user_password', :with => 'sjgldjgjg')
    first('input[type="submit"]').click
    page.has_no_text?('Test User')
    page.has_no_text?('Sign out')
end

Given(/^I click the logout button$/) do
    pry.byebug
    first('input[type="submit"]').click
end
