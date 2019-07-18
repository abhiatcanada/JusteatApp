*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    [Documentation]    This keyword confirms the selected restaurant page loded properly.
    Wait Until Page Contains Element    //a[contains(text(),'Reviews')]