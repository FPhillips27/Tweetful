Feature: As a user, I should be able to use the “About” page to learn more about Tweetful.
  Scenario: As a user, I should be able to learn about the Company History
    Given that I am on the About page
    Then I will see the paragraph heading “Company History”

  Scenario: As a user, I should be able to learn about Tweetful
    Given that I am on the About page
    Then I will see the paragraph heading “About Tweetful”
    
  Scenario: As a user, I should be able to learn about what makes Tweetful different from our comptetitors
    Given that I am on the About page
    Then I will see the paragraph heading “What Makes Us Different”
