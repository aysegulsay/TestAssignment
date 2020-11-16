
Feature: Subscribe to the Newsletter

Background:

  * configure driver = { type: 'chromedriver', showDriverLog: true }
  
  Scenario: 
  
    Given driver 'https://room5.trivago.com/'
    And delay(2000)
    And input("input[name='email']", 'saysgl@gmail.com')
    When submit().click("//button[text()='Inspire Me']")
    Then  waitUntil("//p[text()='You are now checked-in!']")
  
   

   
    
  
   
   
   
