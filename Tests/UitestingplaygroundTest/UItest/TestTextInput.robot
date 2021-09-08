*** Settings ***
Documentation  Check text changed
Library  SeleniumLibrary
Resource    ../../../Bindings/Bindings.robot

*** Test Cases ***
Check that button text is changed after click
[Tags] UI
    Given Browser Chrome is open
    And Button text is "Button That Should Change it's Name Based on Input Value"
    When Input text "Test" to the text field
    And Click to button "Button That Should Change it's Name Based on Input Value"
    Then button text should be "Test"



