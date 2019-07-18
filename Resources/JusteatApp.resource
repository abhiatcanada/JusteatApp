*** Settings ***
Resource    PO/LandingPage.resource
Resource    PO/Restaurant.resource
Resource    PO/SearchByCategory.resource
Resource    PO/TopNav.resource
Resource    PO/SearchResults.resource

*** Keywords ***

Search for Restaurants
    [Documentation]    Search for the Restaurants in the provided area code. 
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Restaurants by AreaCode
    SearchResults.Verify Search Completed

Select First Restaurant from Search Results
    [Documentation]    Selects the first search result from the list of search.
    SearchResults.Click Restaurant link
    Restaurant.Verify Page Loaded

Search for Restaurants by Cuisines
    [Documentation]    The keyword accespts type of Cuisine to select the list of 
    ...    Restaurants by Cusines.
    [Arguments]   ${Cuisines}
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Run Keyword If  '${Cuisines}'== 'Chinese'  SearchByCategory.Chinese Cuisines
    Run Keyword If  '${Cuisines}'== 'Pizza'  SearchByCategory.Pizza
    Run Keyword If  '${Cuisines}'== 'Indian'  SearchByCategory.Indian Cuisines
    SearchResults.Verify Search by Cuisines Completed