\
Scenario: Sign Up new User
Meta:
	@layout desktop
	
	
Given I am on the main application page

When I enter `<EMail>` in field located `By.xpath(//*[@id="hero"]/div/div/div[2]/form/div[1]/input)`
When I click on element located `By.xpath(//*[@id="hero"]/div/div/div[2]/form/div[2]/button)`
When I enter `<UserName>` in field located `By.xpath(//*[@id="displayName"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Examples:
|EMail                					     |UserName|
|#{generate(regexify '[a-z]{5}')}@anymail.com|#{generate(Name.FirstName)} #{generate(Name.LastName)}|
|#{generate(regexify '[a-z]{5}')}@anymail.com|#{generate(Name.FirstName)} #{generate(Name.LastName)}|