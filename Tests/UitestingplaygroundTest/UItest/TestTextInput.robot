*** Settings ***
Documentation  I want to check the text change on the button after click
Library  SeleniumLibrary
Resource  ../../../Resourses/ResoursesUItest/ResoursesTestTextInput.robot
Test Setup  Open Browser
Test Teardown  Close Browser

*** Test Cases ***
Check that button text is changed after click (latin)
    [Tags]  UI
    Given Site http://uitestingplayground.com/textinput is open
    And The button text should be Button That Should Change it's Name Based on Input Value
    When I input text "Test" to the text field
    And I click to button "Button That Should Change it's Name Based on Input Value"
    Then button text should be "Test"

Check that button text is changed after click (cirillic)
   [Tags]  UI
    Given Site http://uitestingplayground.com/textinput is open
    And The button text should be Button That Should Change it's Name Based on Input Value
    When I input text "Тест" to the text field
    And I click to button "Button That Should Change it's Name Based" on Input Value
    Then button text should be "Тест"



