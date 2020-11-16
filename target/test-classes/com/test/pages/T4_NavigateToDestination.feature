
Feature: Navigate to a destination through the menu on the top left

Background:
#  * robot { app: 'Chrome' }
  * configure driver = { type: 'chromedriver', showDriverLog: true }
  
  Scenario: 
  
    Given driver 'https://magazine.trivago.com/'
    And delay(2000)
    And click("//div[@class='nav-icon']")
    And delay(2000)
    When click("//div[@class='menu-sign plus-sign']")
    And delay(2000)
    And focus("//div[text()='Northwest']")
    And click('{div}Northwest')
    #Then click("//div[text()='Northwest']")
    Then match driver.url == 'https://magazine.trivago.com/destination/northwest/'
    Then match driver.title == "Northwest"
   

   
    
  
   
   
   
