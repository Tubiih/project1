*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Select application checkbox
    Wait Until Element Is Visible    //*[@id="talents_datatable"]/tbody/tr[1]/td[13]/div/input
    Click Element                    //*[@id="talents_datatable"]/tbody/tr[1]/td[13]/div/input

Open other actions
    Wait Until Element Is Visible    //*[@id="other-actions"]
    Click Element                    //*[@id="other-actions"]

Click delete application
    Click Element                    //html/body/div[2]/div[3]/div[1]/div[2]/div[2]/div/div[2]/div/div[5]/ul/li[4]/a

Continue removal
    Wait Until Element Is Visible    //*[@id="shopping-cart-overlay"]/div/div[2]/div[3]/a[2]
    Click Element                    //*[@id="shopping-cart-overlay"]/div/div[2]/div[3]/a[2]

Confirm application removal
    Wait Until Element Is Visible    //*[@id="confirm-delete-applications"]/div/div[2]/div[2]/a[2]
    Click Element                    //*[@id="confirm-delete-applications"]/div/div[2]/div[2]/a[2]
