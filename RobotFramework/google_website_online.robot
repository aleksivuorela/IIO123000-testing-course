*** Settings ***
Documentation     A test suite with a single test for checking that Google website is online.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Variables ***
${PAGE}	https://www.google.fi/
${TITLE}	Google

*** Test Cases ***
Go To Google And Do Three Way Check
    Open Browser	${PAGE}	firefox
    Wait Until Page Contains	${TITLE}
    Wait Until Element Contains	tag=title	${TITLE}
    Title Should Be	${TITLE}
    [Teardown]    Close Browser
