*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Chinese Cuisines
    [Documentation]    Loads the page for Chinese cusines
    Click Element    //a[contains(text(),'Chinese')]
    

Indian Cuisines
    [Documentation]    Loads the page for Indian cusines
    Click Element    //a[contains(text(),'Indian')]

Pizza
    [Documentation]    Loads the page for Pizza cusines
    Click Element    //a[contains(text(),'Pizza')]