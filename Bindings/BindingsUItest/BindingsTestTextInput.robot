*** Settings ***
Documentation  Test UItestplayground tasks
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${urltextinput}  http://uitestingplayground.com/textinput
${textinput}  Test


*** Keywords ***
Browser Chrome is open
    Open Browser  ${urltextinput}  ${browser}
Button text is "Button That Should Change it's Name Based on Input Value"
    Get Text  //button[text('Button That Should Change it's Name Based on Input Value')]
Input text "Test" to the text field
    Input Text  //input[id@='newButtonName']  ${textinput}
Click to button "Button That Should Change it's Name Based on Input Value"
    Click Button  //button[text('Button That Should Change it's Name Based on Input Value')]
button text should be "Test"
    Get Text  //button[text('Test')]






