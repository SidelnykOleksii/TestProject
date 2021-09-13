*** Settings ***
Documentation  I want check that text displayed after 15 second
Library  SeleniumLibrary
Resource  ../../../Resourses/ResoursesUItest/ResoursesTestClientDelay.robot
Test Setup  Open Browser
Test Teardown  Close Browser

*** Test Cases ***
Check that text displayed after 15 second
    [Tags]  UI
    Given Site http://uitestingplayground.com/clientdelay is open
    When I click on "Button Triggering Client Side Logic" button
    Then I wait 15 seconds until the text Data calculated on the client side. appears under the button




