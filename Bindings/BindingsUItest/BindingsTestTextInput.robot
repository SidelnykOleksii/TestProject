*** Settings ***
Documentation  We check the text change on the button
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://uitestingplayground.com/textinput
${textinput}  Test
${buttonlocatorbeforetext}  //button[text('Button That Should Change it's Name Based on Input Value')]
${textfileld}  //input[id@='newButtonName']
${textaftertest}  //button[text('Test')]

*** Keywords ***
site http://uitestingplayground.com/textinput is open
    Open Browser  ${url}  ${browser}
The button text should be "Button That Should Change it's Name Based on Input Value"
    Get Text  ${buttonlocatorbeforetext}
I input text "Test" to the text field
    Input Text  ${textfileld}  ${textinput}
I click to button "Button That Should Change it's Name Based on Input Value"
    Click Button  ${buttonlocatorbeforetext}
button text should be "Test"
    Get Text  ${textaftertest}






