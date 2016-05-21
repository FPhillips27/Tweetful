Feature: Ensuring that users can log in and out of Tweetful
  Scenario: As a user with valid credentials, I should be able to login.
    Given a valid user
    When I am logged in as our test user
    Then I will see the text Signed in successfully
    And I will not see the text "Invalid email or password."
    
  Scenario: As a user witohut valid credentials, I should not be able to login.
    When I try to login as a user without valid credentials
    Then I will not see the text "Signed in successfully."
    And I will see the text Invalid email or password
    