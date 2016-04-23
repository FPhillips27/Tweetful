Feature: The Tweetful Tweets Page
  Background: Given that I am logged in as our test User

  Scenario: As a user, I should see recent Tweets which have been sent out on Tweetful
    When I am on the Tweets page
    Then I will see the list of recent Tweets
    
  Scenario: As a user, I should see the username and full name of the currently logged in user in the current user information list.
    When I am on the Tweets page
    Then I will see the text "@TestUser" as the current user's username
    And I will see the text "Test User" as the current user's full name
    
  Scenario: As a user, I should see the usernames and real names of people who have Tweeted
    When I am on the Tweets page
    Then I will see the text "@Alberto"
    And I will see the text "Alaina Ortiz"

  Scenario: As a user, if I click the Tweets link, I should remain on the Tweets page
    When I am on the Tweets page
    Then I will see the text "Tweets"
    And I will see the list of recent Tweets

  Scenario: As a user, I should be able to see the 