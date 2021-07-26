*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Click position settings button
    Wait Until Element Is Visible    //*[@id="positions_datatable"]/tbody/tr[1]/td[13]/div/span
    Click Element                    //*[@id="positions_datatable"]/tbody/tr[1]/td[13]/div/span
Click delete position button
    Wait Until Element Is Visible    //*[@id="positions_datatable"]/tbody/tr[1]/td[13]/div/ul/li[10]/a
    Click Element                    //*[@id="positions_datatable"]/tbody/tr[1]/td[13]/div/ul/li[10]/a
Confirm
    Wait Until Element Is Visible    //*[@id="confirm-status-change"]/div/div[2]/div[2]/a[2]
    Click Element                    //*[@id="confirm-status-change"]/div/div[2]/div[2]/a[2]
