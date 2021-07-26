*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open appointment
    Wait Until Element Is Visible    //*[@id="calendar"]/div[2]/div/table/tbody/tr/td/div/div/div[3]/table/tbody/tr/td[5]/div/div[2]/a/div[2]
    Click Element                    //*[@id="calendar"]/div[2]/div/table/tbody/tr/td/div/div/div[3]/table/tbody/tr/td[5]/div/div[2]/a/div[2]

Confirm appointment deletion
    Wait Until Element Is Visible    //*[@id="action-offer-slots"]
    Click Element                    //*[@id="action-offer-slots"]