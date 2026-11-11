*** Settings *** 
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value is set the counter changes to the chosen value
    Go To  ${HOME_URL}
    Fill Text  input[name="initial_value"]  9 
    Keyboard Key    press    Enter
    Get Text  body  *=  nappia painettu 9 kertaa 