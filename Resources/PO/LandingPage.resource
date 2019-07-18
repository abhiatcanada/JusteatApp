*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    [Documentation]    This keyword loads the application.
    Go To  http://www.justeat.co.uk/

Verify Page Loaded
    [Documentation]    This keyword confirms the application is loaded properly.
    Wait Until Page Contains Element    //h1[contains(text(),'Tuck into a takeaway today')]
    
    
            
    