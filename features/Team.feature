Feature: The Tweetful Team Page
  Scenario: As a user, I should be able to learn about the team behind Tweetful
    Given I am on the Team page
    Then I will see the text "Peter Lonestar"
    And I will see their title is "Founder"
    And I will see the text "Bill Billerson"
    And I will see their title is "CFO"
    And I will see the text "Forrest Phillips"
    And I will see their title is "CTO"
    And I will see the text "Making The Internet a Little More Thoughtful"
  