Feature: Online electronics compare

Scenario: Buy a laptop
  Given I navigate to flipkart site
  When I keep my mouse pointer over electronics
  And click laptops
  Then I select the Brand and Price Range
  When I add laptops for comparison
  Then comparison page pops up
  When I Buy a laptop
  And enter the fields
