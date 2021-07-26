*** Settings ***
Suite Setup       Open browser to login page
Resource          login.resource
Resource          invalidlogin.resource
Resource          createposition.resource
Resource          deleteposition.resource
Resource          createapplication.resource
Resource          deleteapplication.resource
Resource          calendar.resource
Resource          deleteappointment.resource
Suite Teardown    Close Browser

*** Test Cases ***
Invalid login
     Put browser in full screen
     Type in invalid username
     Type in invalid password
     Submit credentials
     Login page should be open

Valid login
    Put browser in full screen
    Type in valid username
    Type in valid password
    Submit credentials
    Main page should be open

Create new position
    Open position window
    Position window should be open
    Add new position
    Insert mandatory credentials
    Enter to requirements
    Enter to about us
    Enter to preview
    Publish position
    

Delete position
    Go to home page
    Open position window
    Position window should be open
    Click position settings button
    Click delete position button
    Confirm

Create new application
    Go to home page
    Open application window
    Application window should be open
    Add new application
    Select job
    Add basic information
    Save application


Delete application
    Go to home page
    Open application window
    Application window should be open
    Select application checkbox
    Open other actions
    Click delete application
    Continue removal
    Confirm application removal

Add calendar appointment
    Go to home page
    Open calendar window
    Click add appointment
    Set date and time
    Add appointment

Delete calendar appointment
    Go to home page
    Open calendar window
    Open appointment
    Confirm appointment deletion
