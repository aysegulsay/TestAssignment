
Feature: Fill in the contact form and send it (accessible through the footer)


Background:

  * configure driver = { type: 'chromedriver', showDriverLog: true }
  
  Scenario: 
    Given driver 'https://room5.trivago.com/'
    And click("//a[text()='Contact']")
    Then waitForUrl('https://magazine.trivago.com/contact/')
    Then switchPage('https://magazine.trivago.com/contact/')
    And input("//textarea[@class='contact-msg']", 'This is for testing.')
    And input("input.contact-input", 'Testuser') 
    And input("//input[@id='contact-email']", 'saysgl@gmail.com')
    And delay(2000)
    And click("//input[@id='confirm']")
    When submit().click("//button[@class='contact-submit']")
    Then  waitForText('body','Message Sent Successfully!')
    * delay(1000).screenshot("//p[text()='Message Sent Successfully!')
    
	
    

   
    
  
   
   
   
