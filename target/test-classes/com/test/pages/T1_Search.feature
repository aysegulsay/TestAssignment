
Feature: Search for any location on Magazine by using the search bar

Background:

  * configure driver = { type: 'chromedriver', showDriverLog: true }
  
  Scenario: 
  
    Given driver 'https://room5.trivago.com/'
    And click("//div[@class='search-icon']")
    When input("//input[@placeholder='Search']", 'arizona' + Key.ENTER)
    And focus("//div[@class='search-results']")
    When click("//span[text()='The Top 9 Memory Making Family Resorts in Arizona']")
    Then match driver.title == "The Top 9 Memory Making Family Resorts in Arizona"
    
   

   
    
  
   
   
   
