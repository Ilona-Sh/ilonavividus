Scenario: Open Trello
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Login with registered user
When I click on element located `By.xpath(//a[@href='/login'])`
When I enter `${registeredUserEmail}` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I enter `${registeredUserPass}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`

Scenario: Verify user

When I wait until element located `By.xpath(//div[@id='header'])` appears
Then the page with the URL 'https://trello.com/thename7/boards' is loaded