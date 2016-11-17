*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${PAGE}           http://www.google.fi
${PAGE2}          http://www.images.google.com
${BROWSER}        Firefox
${SEARCHWORD}     Trump
${SEARCHIMAGE}    cat

*** Keywords ***
Open Browser To Google
    Open Browser    ${PAGE}    ${BROWSER}
    Google Should Be Open

Open Browser To Google Images
    Open Browser	${PAGE2}	${BROWSER}
    Google Images Should Be Open	

Google Should Be Open
    Wait Until Page Contains	Google
    Title Should Be    Google

Google Images Should Be Open
    Wait Until Page Contains	Images
    Title Should Be	Google Images
