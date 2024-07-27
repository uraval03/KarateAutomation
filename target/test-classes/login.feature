#  ********************************************************************************
#        Author:  Unnati Raval
#  Date created:  25-07-2024
#   Description:  This feature file is intended to be used for login workflow
#  *******************************************************************************

Feature:Login workflow

Background: 
    * def locator = read('classpath:common/locator-lookup.json')
    * def data = read('classpath:feeder/data.json')

Scenario: Verify that user can login into application

    * driver data.loginPage.baseUrl
    * delay(3000)
    * maximize()
    * input(locator.login.userName, data.loginPage.userName)
    * input(locator.login.password, data.loginPage.password)
    * click(locator.login.loginButton)
    * delay(3000)
