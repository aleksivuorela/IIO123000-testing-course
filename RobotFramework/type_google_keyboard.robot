
*** Settings ***
Documentation     A test suite with a single test for typing with Google keyboard.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Search images from Google
    Open Browser To Google
    Click Link	xpath=//a[@aria-label='Syöttötyökalut']
    Wait Until Page Contains Element	xpath=//button[@id='K75']
	Click Button	id=K75
	Click Button	id=K65
	Click Button	id=K76
	Click Button	id=K65
	Page Should Contain	kala
    [Teardown]    Close Browser
