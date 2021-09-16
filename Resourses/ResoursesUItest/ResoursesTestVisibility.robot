*** Settings ***
Documentation  We check that all buttons, except button "Hide", not displayed after click on button "Hide"
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${HIDEBUTTON}  //button[@id='hideButton']
#${REMOVEDBUTTON}  //button[@id='removedButton']
#${ZEROWIDTHBUTTON}  //button[@id='zeroWidthButton']
${OVERLAPPEDBUTTON}  //button[@id='overlappedButton']
${OPACITYBUTTON}  //button[@id='transparentButton']
${VISIBILITYHIDDENBUTTON}  //button[@id='invisibleButton']
${DISPLAYNONEBUTTON}   //button[@id='notdisplayedButton']
${OFFSCREENBUTTON}  //button[@id='offscreenButton']
@{BUTTONS}  //button[@id='removedButton']  //button[@id='zeroWidthButton']

*** Keywords ***
site ${url} is open
    Open Browser  ${url}  ${BROWSER}
following button ${text1} is displayed
    Page Should Contain Button  ${BUTTONS}[0]
    #Page Should Contain Button  ${REMOVEDBUTTON}
I click to button ${text}
    Click Button  ${HIDEBUTTON}
button ${text1} should not be visible on the page
    Page Should Not Contain Button  ${BUTTONS}[0]




