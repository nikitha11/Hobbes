@Hobbes
Feature:As a End User
I should be able to login succesfully  


@Smoke
Scenario:Login With Valid Credentials
Given I am on Login page
When I enter the Valid Email and Password
Then I should see the home page