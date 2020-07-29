*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    [Documentation]    To open browser instance and meximize it.
    Open Browser  about:blank  firefox
    Maximize Browser Window

End Web Test
    [Documentation]    This key word closes all the instances of the browser instance. 
    Close Browser