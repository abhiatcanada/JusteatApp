
*** Settings ***
Resource    ../Resources/Common.resource  # necessary for Setup & Teardown
Resource  ../Resources/JusteatApp.resource  # necessary for lower level keywords in test cases

Test Setup  Begin Web Test
Test Teardown  End Web Test



# Copy/paste the below line to Terminal window to execute
# robot -d results tests/justeat.robot

*** Test Cases ***
User can search for restaurants
    [Tags]    Search
    [Documentation]    User will be able to search restaurants in the area "AR51 1AA"
    JusteatApp.Search for Restaurants

User can select restaurant from search results
    [Tags]    Search    Select
    [Documentation]    User searches the Restaurants and selects the frist restaurant
    JusteatApp.Search for Restaurants
    JusteatApp.Select First Restaurant from Search Results

User can search for restaurants by Cuisine
    [Tags]    Cuisine Search
    [Documentation]    User will be able to search restaurants by passing cusine value
    JusteatApp.Search for Restaurants by Cuisines  Indian
    


