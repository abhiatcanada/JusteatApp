*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    [Documentation]    The keyword verifies the search page is loaded.
    Wait Until Page Contains Element    //span[@class='u-showAboveMid']

Click Restaurant Link
    [Documentation]  Clicks on the first Restaurant in the search results list
    Click Link    //div[@class='c-listing']//section[1]//a[1]
    
Verify Search by Cuisines Completed
    [Documentation]    The keyword verifies the search page is loaded.
    Wait Until Page Contains Element    //div[@class='cuisine-popular-dishes__dishes-wrapper']//div[1]//img[1]