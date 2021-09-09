*** Settings ***
Documentation  Check text displayed
Library  SeleniumLibrary
Resource  ../../../Bindings/BindingsUItest/BindingsTestClientDelay.robot
#Suite Setup  Open Browser
Suite Teardown  Close Browser

*** Test Cases ***
Check text displayed after click button
    [Tags]  UI
    Given Site http://uitestingplayground.com/clientdelay is open
    When I click on "Button Triggering Client Side Logic" button
    Then I wait 15 seconds until the text "Data calculated on the client side." appears under the button


