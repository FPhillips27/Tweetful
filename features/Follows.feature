Feature: The Follows page
  Background: Given that I am logged in as our test User
  
  Scenario: As I user, I should see who Tweetful suggests I follow. These users should be identified both by their real name and their Tweetful handle.
    When I am on the Follows page
    Then I will see the text "Who to follow"
    And I will see the text "Tweetful accounts in alpabetical order."
    And I will see the text "Alaina Ortiz"
    And I will see the text "@Alberto"
    And I will see the text "Warren Kiehn"
    And I will see the text "@Aglae"

  Scenario: As a user, if I am already following someone when I navigate to the page, then I should see the text Unfollow in the button underneath their name.
    When I am on the Follows page
    Then I will see the text "Unfollow"
    
  Scenario: As a user, if I am already not following someone when I navigate to the page, then I should see the text Follow in the button underneath their name.
    When I am on the Follows page
    Then I will see the text "Follow"

  Scenario: As a user, I should be able to see the Tweetful contact email.
    When I am on the Follows page
    Then I will see the text "admin@tweetful.io"
