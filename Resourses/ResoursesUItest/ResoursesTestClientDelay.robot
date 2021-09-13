*** Settings ***
Documentation  We check the appearance of the text after clicking the button
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${BUTTON}  //button[@id='ajaxButton']
${SLEEP}  15
${APPEARSTEXT}  //p[text()='Data calculated on the client side.']

*** Keywords ***
Site ${url} is open
    Open Browser  ${url}  ${BROWSER}
I click on ${text} button
    Click Button  ${BUTTON}
Then I wait ${numeric} seconds until the text ${text} appears under the button
    Sleep  ${SLEEP}
    Element Text Should Be  ${APPEARSTEXT}  ${text}