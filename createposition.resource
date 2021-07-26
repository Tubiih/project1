*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open position window
    Wait Until Element Is Visible    //*[@id="navbar-positions"]/a/span[1]
    Click Element                    //*[@id="navbar-positions"]/a/span[1]
Position window should be open
    Title Should Be                  Positions | TalentAdore - Superior Candidate Experience
Add new position
    Wait Until Element Is Visible    //*[@id="create-job-requisition"]
    Click Element                    //*[@id="create-job-requisition"]
Insert mandatory credentials
    Wait Until Element Is Visible    //*[@id="new_job-job_name"] 
    Input Text                       //*[@id="new_job-job_name"]    Tämän ei pitäisi näkyä -Tuomas
    Input Text                       //*[@id="new_job-id_name"]    Toivottavasti toimii
Enter to requirements
    Wait Until Element Is Visible    //*[@id="edit-position"]/div[19]/div/a[1]
    Click Element                    //*[@id="edit-position"]/div[19]/div/a[1]
Enter to about us
    Wait Until Element Is Visible    //*[@id="requirements"]/div[11]/div/a[1]
    Click Element                    //*[@id="requirements"]/div[11]/div/a[1]
Enter to preview
    Wait Until Element Is Visible    //*[@id="about-us"]/div[9]/div/a[1]
    Click Element                    //*[@id="about-us"]/div[9]/div/a[1]
Publish position
    Wait Until Element Is Visible    //*[@id="preview"]/div[5]/div/input[3]
    Click Element                    //*[@id="preview"]/div[5]/div/input[3]