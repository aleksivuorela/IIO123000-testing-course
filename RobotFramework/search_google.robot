*** Settings ***
Documentation     A test suite with a single test for searching Google.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Google Trump and check results
	Open Browser To Google
	Input Text    id=lst-ib	${SEARCHWORD}
	Submit Form
	Wait Until Page Contains	Wikipedia
	[Teardown]    Close Browser
