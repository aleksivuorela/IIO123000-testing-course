*** Settings ***
Documentation     A test suite with a single test for searching images from  Google.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Search images from Google
    Open Browser To Google Images
    Input Text    id=lst-ib   ${SEARCHIMAGE}
    Submit Form
    Wait Until Page Contains	Cute
    Page Should Contain Image	xpath=//img[@alt='Image result for cat']	  
    [Teardown]    Close Browser
	
