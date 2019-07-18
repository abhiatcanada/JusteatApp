*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${areaCode} =  AR51 1AA

*** Keywords ***
Search for Restaurants by AreaCode
    Enter Search Term
    Submit Search

Enter Search Term
    [Documentation]    Keyword to enter the area code in to search criteria.
    Input Text    //input[@name='postcode']    ${areaCode} 
    

Submit Search
    [Documentation]    To submit the search criteria entered.
    Click Button    //button[@class='Form_c-search-btn_2cjDI']
    