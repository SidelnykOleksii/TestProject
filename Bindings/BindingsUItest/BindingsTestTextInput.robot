*** Settings ***
Documentation  We check the text change on the button
Library  SeleniumLibrary
Library    Dialogs
Resource    BindingsTestTextInput.robot

*** Variables ***
${browser}  chrome
${url}  http://uitestingplayground.com/textinput
${textinput}  Test
${buttonlocatorbeforetext}  //button[@id='updatingButton']
${textfileld}  //input[@id='newButtonName']
${textaftertest}  //button[@id='updatingButton']

*** Keywords ***

site http://uitestingplayground.com/textinput is open
    Open Browser  ${url}  ${browser}
The button text should be "Button That Should Change it's Name Based on Input Value"
    Element Text Should Be  ${buttonlocatorbeforetext}  Button That Should Change it's Name Based on Input Value
    Pause Execution
I input text "Test" to the text field
    Input Text  ${textfileld}  ${textinput}
I click to button "Button That Should Change it's Name Based on Input Value"
    Click Button  ${buttonlocatorbeforetext}
button text should be "Test"
    Element Text Should Be  ${textaftertest}  Test






