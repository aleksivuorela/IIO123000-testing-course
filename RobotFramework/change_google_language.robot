*** Settings ***
Documentation     A test suite with a single test for changing Google language to Swedish.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Change language to Swedish
	Open Browser To Google
        Click Link	svenska
        Wait Until Page Contains	Sök på Google
        [Teardown]    Close Browser

