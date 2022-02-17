Meta:
Tier 1

GivenStories: story/webhw2/trello2.precondition.story 
Scenario: User Sign in with registered account

Scenario: visual check header
When I change context to element located `By.xpath(//div[@id='header'])`
When I compare against baseline with `header`

Scenario: visual check side menu
When I change context to element located `By.xpath(//nav[@class='home-left-sidebar-container'])`
When I compare against baseline with `side_menu`

Scenario: visual check members
When I change context to element located `By.xpath(//div[@id='trello-root'])`
When I click on element located `By.xpath(//a[@data-test-id='home-team-members-tab'])`
When I compare against baseline with `member_page` ignoring:
|ELEMENT						|AREA					|
|By.xpath(//div[@id='header'])	|By.cssSelector(#header)|

Scenario: visual check workspaces menu
When I click on element located `By.xpath(//button[@data-test-id='workspace-switcher'])`
When I change context to element located `By.xpath(/html/body/div[4]/div/section)`
When I compare against baseline with `workspace_popover`

Scenario: visual check notification popover
When I click on element located `By.xpath(//button[@data-test-id='header-notifications-button'])`
When I change context to element located `By.xpath(//section[@data-test-id='header-notifications-popover'])`
When I compare against baseline with `notification_popover`
