*** Settings ***
Documentation  I want to check the text change on the button after click
Library  SeleniumLibrary
Resource  ../../../Bindings/BindingsUItest/BindingsTestTextInput.robot
Suite Setup  Open Browser
Suite Teardown  Close Browser

*** Test Cases ***
Check that button text is changed after click
    [Tags]  UI
    Given site http://uitestingplayground.com/textinput is open
    And The button text should be "Button That Should Change it's Name Based on Input Value"
    When I input text "Test" to the text field
    And I click to button "Button That Should Change it's Name Based on Input Value"
    Then button text should be "Test"



