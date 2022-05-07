Feature: Coursedog Assignment

    Background:
        Given I navigate to the website

    Scenario Outline: To Search by "<Date>" date
        When I select a "<Date>" date from the calendar
        And I verify "<Eventname>" events on that day
        When I enter "<Event>" keyword in navigation bar
        And I verify "<Eventname>" events on that phrase
        When I select "<SearchText>" organization from FilterbyOrganization dropdown
        And I verify "<SearchText>" events on that phrase
        And I verify "<SearchResultUNModel>" count
        Examples:
            | Date        | Event  | Eventname | SearchText | SearchResultUNModel |
            | 20-Nov-2021 | Tokyo  | Tokyo     | Model UN   | 4 total             |


    Scenario Outline: To Search by "<Date>" date
        When I select a "<Date>" date from the calendar
        And I verify "<Event>" events on that day
        When I click on Today Events
        And I verify "<Event>" events on that day
        When I click on Featured Events
        And I verify "<SearchText>" events on that phrase
        And I verify "<SearchResult>" count
        Examples:
            | Date        | Event   | SearchText | SearchResult |
            | 2-Sep-2021 | No events found  | QA Task Submission  | 3 total             |


Scenario Outline: To validate Future Events
    When I click on Future Events
    And I click on first Test Event
    Then I verify "<text1>" in Add to calendar link
    Then I verify "<text2>" in Add to Google calendar link
    Then I verify "<text3>" Event Type text
    Then I verify "<text4>" Organized by text
    Then I verify "<text5>" Contacts text
    Then I verify "<text6>" Event Description text
Examples:
|text1|text2|text3|text4|text5|text6|
|Add to calendar|Add to Google Calendar|Event Type|Organized by|Contacts|Event Description|

