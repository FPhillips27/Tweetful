Feature: The Follows page
  Scenario: As I user, I should see who Tweetful suggests I follow. These users should be identified both by their real name and their Tweetful handle.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Follows page
    Then I will see the text "Who to follow"
    And I will see the text "Tweetful accounts in alpabetical order."
    And I will see the text "Alaina Ortiz"
    And I will see the text "@Alberto"
    And I will see the text "Warren Kiehn"
    And I will see the text "@Aglae"

  Scenario: As a user, if I am already following someone when I navigate to the page, then I should see the text Unfollow in the button underneath their name.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Follows page
    Then I will see the text "Unfollow" in container ".input.btn.btn-danger.mar-top-5"
    
  Scenario: As a user, if I am already not following someone when I navigate to the page, then I should see the text Follow in the button underneath their name.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Follows page
    Then I will see the text "Follow" in container "li:nth-child(71) input.btn.btn-primary.mar-top-5"
    
  Scenario: As a user, if I click to follow a user, the Follow button should change to the Unfollow button. If I click again to Unfollow, it should change the Follow button.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Follows page
    Then I will see the text "Follow" in container "li:nth-child(5) input.btn.btn-primary.mar-top-5"
    When I click "li:nth-child(5) input.btn.btn-primary.mar-top-5"
    Then I will see the text "Unfollow" in container "li:nth-child(5) input.btn.btn-danger.mar-top-5"
    And I will see the text "You are following @Elmore"
    When I click "li:nth-child(5) input.btn.btn-danger.mar-top-5"
    Then I will see the text "You are no longer following @Elmore"
    And I will see the text "Follow" in container "li:nth-child(5) input.btn.btn-primary.mar-top-5"
    
  Scenario: As a user, if I am on the Follow page I should see my own user name
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Follows page
    Then I will see the text "@Forrest"
    
  Scenario: As a user, if I click the Follows link, I should remain on the Follows page.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Follows page
    And I click the Follow page link
    Then I will see the text "Tweetful accounts in alpabetical order."
    
  Scenario: As a user, if I click the Tweets link, I navigate to the Tweets page.
    Given that I am logged in as mrforrestphillips@gmail.com
    When I am on the Follows page
    And I click the Tweets page link
    Then I will see the text "Tweets"
    And I will see the list of recent Tweets
    