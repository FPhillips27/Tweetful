When(/^I am on the About page$/) do
   visit("/about")
end

Then(/^I will see the paragraph heading "([^"]*)"$/) do |text|
    expect(page).to have_css 'h2', text: "#{text}"
end
