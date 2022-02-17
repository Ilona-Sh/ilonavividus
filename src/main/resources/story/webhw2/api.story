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

Scenario: create a board
Meta:
	@layout desktop
	
	
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=5da9190a5c1f1f2b2dff32e9021bb7a4&token=87f006fa0241ce8854a299517b762637cf3b99771d877085b0ae7ec8fc29711c&name=testboard'
Then the response code is equal to '200'
Given I am on the main application page
Then the text 'testboard' exists