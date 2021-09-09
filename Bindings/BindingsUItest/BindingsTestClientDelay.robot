*** Settings ***
Documentation  We check the appearance of the text after clicking the button
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://uitestingplayground.com/clientdelay
${button}  //button[@id='ajaxButton']
${sleep}  15
${appearstextlocator}  //p[text()='Data calculated on the client side.']
${appearstext}  Data calculated on the client side.

*** Keywords ***
Site http://uitestingplayground.com/clientdelay is open
    Open Browser  ${url}  ${browser}
I click on "Button Triggering Client Side Logic" button
    Click Button  ${button}
Then I wait 15 seconds until the text "Data calculated on the client side." appears under the button
    Sleep  ${sleep}
    Element Text Should Be  ${appearstextlocator}  ${appearstext}