*** Settings ***
Documentation  We check the text change on the button
Library  SeleniumLibrary
Library    Dialogs
Library  Collections
#Resource    ResoursesTestTextInput.robot

*** Variables ***
${BROWSER}  chrome
${BUTTON}  //button[@id='updatingButton']
${TEXTFIELD}  //input[@id='newButtonName']
&{BUTTONS}  "Button That Should Change it's Name Based on Input Value"=//button[@id='updatingButton']

*** Keywords ***
Site ${url} is open
    Open Browser  ${url}  ${BROWSER}
The button text should be ${text}
    Element Text Should Be  ${BUTTON}  ${text}
    Pause Execution
I input text ${text} to the text field
    Log  ${text}
    Input Text  ${TEXTFIELD}  ${text}
I click to button ${text}
    Click Button  ${BUTTONS[${text}]}
button text should be ${text}
    Element Text Should Be  ${BUTTON}  ${text}







