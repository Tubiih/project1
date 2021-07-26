*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${FIRSTNAME}                         tuomas
${LASTNAME}                          heiskala
${EMAIL}                             testi@osoite.fi

*** Keywords ***

Open application window
    Wait Until Element Is Visible    //*[@id="navbar-talents"]/a/span[1]
    Click Element                    //*[@id="navbar-talents"]/a/span[1]
Application window should be open
    Title Should Be                  Applications | TalentAdore - Superior Candidate Experience
Add new application
    Click Element                    //*[@id="add-application"]
Select job
    Click Element                    //*[@id="add-job-dropdown"]
    Click Element                    //*[@id="vp9OQZ"]
Add basic information
    Wait Until Element Is Visible    //*[@id="first_name"]
    Input Text                       //*[@id="first_name"]    ${FIRSTNAME}
    Input Text                       //*[@id="last_name"]     ${LASTNAME}
    Input Text                       //*[@id="email"]         ${EMAIL}
Save application
    Click Element                    //*[@id="submit2"]