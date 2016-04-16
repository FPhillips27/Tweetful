Feature: The Tweetful Tweets Page
  Scenario: As a user, I should see recent Tweets which have been sent out on Tweetful
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    Then I will see the list of recent Tweets
    
  Scenario: As a user, I should see the username and full name of the currently logged in user in the current user information list.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    Then I will see the text "@Forrest" in the current user's username
    And I will see the text "F" as the current user's full name
    
  Scenario: As a user, I should see the usernames and real names of people who have Tweeted
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    Then I will see the text "@Alberto"
    And I will see the text "Alaina Ortiz"

  Scenario: As a user, if I Tweet my Tweet should appear on this page
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    And I Tweet "Hello world!"
    Then I will see the text "Hello world!" in container "ol li:nth-child(1)"
    
  Scenario: As a user, if I attempt to Tweet a Tweet that's over 140 characters, I should receive a warning message telling me that my Tweet is too long.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    And I Tweet "Hello, this Tweet has over 140 characters. Given that, I shouldn't be able to Tweet it as the 140 character character limit is one of the things that makes Twitter, Twitter."
    Then I will see the text "is too long (maximum is 140 characters)"
    
  Scenario: As a user, if I attempt to Tweet a Tweet that's under 2 characters, I should receive a warning message telling me that my Tweet is too short.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    And I Tweet "a"
    Then I will see the text "is too short (minimum is 2 characters)"

  Scenario: As a user, if I click the Tweets link, I should remain on the Tweets page
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    And I click the Tweets page link
    Then I will see the text "Tweets"
    And I will see the list of recent Tweets
    
  Scenario: As a user, if I click the Follows link, I should navigate to the Follows page
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Tweets page
    And I click the Follow page link
    Then I will see the text "Tweetful accounts in alpabetical order."
