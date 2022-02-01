 Feature: User can manually add a request

    Background: User Authenticates
        # Given I am not authenticated
        Given I am a new, authenticated user


    Scenario: Add a request
        Given I am on devWork home page
        When I follow "Aggiungi una Richiesta"
        Then I should be on the Create New Request Page
        When I fill in "Title" with "Mi serve un titolo"
        When I should select "Western"
        When I should select "Fanart"
        When I should select "Action"
        When I fill in "Reference" with "http://www.nonciclopedia.com"
        When I fill in "Description" with "Mi serviva una descrizione per il test"
        And I press "Create Request"
        Then I should be on devWork home page
        And I should see "Mi serve un titolo"

