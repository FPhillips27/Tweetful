Feature: The Tweetful Tweets Page
  Background:
    Given a valid user
    And a second valid user
    And I am logged in as our test user
    
  Scenario: As a user, I should see recent Tweets which have been sent out on Tweetful
    When I am on the Tweets page
    Then I will see the list of recent Tweets
    And I will see the author of the most recent Tweet's full name
    And I will see the author of the most recent Tweet's username
    And I will see when the most recent Tweet was created
    And I will see the content of the most recent Tweet
    
  Scenario: As a user, I should see the username and full name of the currently logged in user in the current user information list.
    When I am on the Tweets page
    Then I will see the text "@TestUser" as the current user's username
    And I will see the text "Testy McTesterson" as the current user's full name
    
  Scenario: As a user, I should see the usernames and real names of people who have Tweeted
    When I am on the Tweets page
    And I enter a Tweet
    Then I will see the text "@TestUser" as the username of the author of the most recent Tweet
    And I will see the text "Testy McTesterson" as the full name of the author of the most recent Tweet
    
  Scenario: As a user, if I click the Tweets link, I should remain on the Tweets page
    When I am on the Tweets page
    Then I will see the text "Tweets"
    And I will see the list of recent Tweets
