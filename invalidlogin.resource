*** Settings ***
Library    SeleniumLibrary
Resource    login.resource

*** Variables ***
${INVALID_USR}        demo@mode.fi
${INVALID_PWD}        mode
*** Keywords ***
Type in invalid username
    Input Text        email     ${INVALID_USR}

Type in invalid password
    Input Text        password   ${INVALID_PWD}

Login page should be open
    Title Should Be   TalentAdore - Superior Candidate Experience
    