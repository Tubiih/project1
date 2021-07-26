*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}           https://stage.talentadore.com/login
${BROWSER}             Chrome
${VALID USR}           tuomas.heiskala@outlook.com
${VALID PWD}           Testiautomaatio1!
${HOME URL}            https://stage.talentadore.com/home

*** Keywords ***
Open browser to login page
    Open Browser         ${LOGIN URL}    ${BROWSER}
    Title Should Be      TalentAdore - Superior Candidate Experience

Type in valid username
    Type in username     ${VALID USR}

Type in username
    [Arguments]          ${username}
    Input Text           email    ${VALID USR}

Type in valid password
    Type in password     ${VALID PWD}
    
Type in password
    [Arguments]          ${password}
    Input Text           password    ${VALID PWD}

Submit credentials
    Click Button         submit

Main page should be open
    Title Should Be      Home | TalentAdore - Superior Candidate Experience

Go to home page
    Go To                ${HOME URL}

Put browser in full screen
    Maximize Browser Window