*** Settings ***
Documentation  Check that buttons not displayed after click to button "Hide"
Library  SeleniumLibrary
Resource  ../../../Resourses/ResoursesUItest/ResoursesTestVisibility.robot
Test Setup  Open Browser
Test Teardown  Close Browser

*** Test Cases ***
Sceanario: Check that all buttons on page are not displayed after click to button "Hide", except button "Hide"
    [Tags]  UI
    Given site http://uitestingplayground.com/visibility is open
    And following button "Removed" is displayed
    And I click to button "Hide"
    Then button "Removed" should not be visible on the page
