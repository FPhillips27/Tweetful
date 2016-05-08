Then(/^I will see the text "([^"]*)" as the current user's username$/) do |name|
    page.has_text?('#{name}')
end

Then(/^I will see the text "([^"]*)" as the current user's full name$/) do |fullName|
    page.has_text?('#{fullName}')
end

Then(/^I will not see the text "([^"]*)"$/) do |text|
    page.has_no_text?('#{text}')
end

Given (/^I perform HTTP authentication as "([^\"]*)\/([^\"]*)"$/) do |username, password|
    puts "id/pswd: #{username}/#{password}"
    ### Following works ONLY if performed first before even going to a page!!!
    if page.driver.respond_to?(:basic_auth)
        puts 'Responds to basic_auth'
        page.driver.basic_auth(username, password)
    elsif page.driver.respond_to?(:basic_authorize)
        puts 'Responds to basic_authorize'
        page.driver.basic_authorize(username, password)
    elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
        puts 'Responds to browser_basic_authorize'
        page.driver.browser.basic_authorize(username, password)
    else
        raise "I don't know how to log in!"
    end
end