*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open calendar window
    Wait Until Element Is Visible    //*[@id="navbar-calendar"]/a/span[1]
    Click Element                    //*[@id="navbar-calendar"]/a/span[1]

Click add appointment
    Wait Until Element Is Visible    //*[@id="add-appointment-slots"]
    Click Element                    //*[@id="add-appointment-slots"]
    
Set date and time
    Click Element                    //*[@id="date_time"]
    Click Element                    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[4]/a
    Click Element                    //*[@id="ui-datepicker-div"]/div[3]/button[2]

Add appointment
    Click Element                    //*[@id="submit-add-slots"]