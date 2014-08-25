Feature: Online shopping

Scenario: Buy a book online
 Given I navigate to flipkart
 And Login to my account
 When I enter my username and password
 Then my home page should display
 When I enter 2 states book into the serch field
 Then the page displaying the book should be present
 Then Cart page is dispalyed
 Then Order summary page is dispalyed
 When I select credit card
 And enter an invalid card number
 Then an error message is displayed
 
 
