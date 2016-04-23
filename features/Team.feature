Feature: The Tweetful Team Page
  Scenario: As a user, I should be able to learn about the team behind Tweetful
    Given I am on the Team page
    Then I will see the text "Peter Lonestar"
    And I will see their title is "Founder"
        #Above will use an id on an <h2> or <h3> to fulfill that step
    And I will see the text "Bill Billerson"
    And I will see their title is "CEO"
    And I will see the text "Forrest Phillips"
    And I will see their title is "CTO"
    And I will see the header "Tweetful"
    And I will see the text "Making The Internet a Little More Thoughtful"
  