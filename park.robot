*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Park Login
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Input Text    //*[@id="email"]    asd@gmail.com
    Input Text    //*[@id="password"]    Asd01
    Click Button    //*[@id="login-button"]
    Sleep    5s
    Close Browser

Park Fail Password
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Input Text    //*[@id="email"]    asd@gmail.com
    Input Text    //*[@id="password"]    Asd012
    Click Button    //*[@id="login-button"]
    Sleep    5s
    Close Browser

Park Fail Email
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Input Text    //*[@id="email"]    asdgmail.com
    Input Text    //*[@id="password"]    Asd01
    Click Button    //*[@id="login-button"]
    Sleep    5s
    Close Browser

Park Fail Empty
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s

    Click Element    //*[@id="login-link"]/span
    Input Text    //*[@id="email"]    ${EMPTY}
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Button    //*[@id="login-button"]
    Sleep    5s
    Close Browser   

Park Alert
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Input Text    //*[@id="email"]    asdgmail.com
    Input Text    //*[@id="password"]    Asd012
    Click Button    //*[@id="login-button"]
    Sleep    2s
    Close Browser

Park Logout
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Input Text    //*[@id="email"]    asd@gmail.com
    Input Text    //*[@id="password"]    Asd01
    Click Button    //*[@id="login-button"]
    Sleep    5s
    Click Element    //button[contains(., 'Kijelentkezés')]

Park New Car
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Sleep    2s
    Input Text    //*[@id="email"]    asd@gmail.com
    Input Text    //*[@id="password"]    Asd01
    Click Button    //*[@id="login-button"]
    Sleep    5s
    Click Element    //*[@id="cars-navbarlink"]
    Sleep    2s
    Click Element    //button[contains(., 'Autó hozzáadása')]
    Sleep    1s

    Input Text    //*[@id="brand"]    Toyota
    Input Text    //*[@id="model"]    Avanza
    Input Text    //*[@id="year"]    2020
    Input Text    //*[@id="licensePlate"]    AB123CD

    Click Button    //button[contains(., 'Mentés')]

Park New Car Check
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Sleep    2s
    Input Text    //*[@id="email"]    asd@gmail.com
    Input Text    //*[@id="password"]    Asd01
    Click Button    //*[@id="login-button"]
    Sleep    5s
    Click Element    //*[@id="cars-navbarlink"]
    Sleep    2s
    Click Element    //button[contains(., 'Autó hozzáadása')]
    Sleep    1s
    


Park Remove Car
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Sleep    2s
    Input Text    //*[@id="email"]    asd@gmail.com
    Input Text    //*[@id="password"]    Asd01
    Click Button    //*[@id="login-button"]
    Sleep    3s
    Click Element    //*[@id="cars-navbarlink"]
    Sleep    2s
    Click Button    //button[contains(., 'Törlés')]
    Sleep    1s
    Handle Alert    ACCEPT
    Sleep    2s
    Close Browser

Park Cancel Remove Car
    Open Browser   https://parking-garage-app.netlify.app/    firefox
    Sleep    2s
    Click Element    //*[@id="login-link"]/span
    Sleep    2s
    Input Text    //*[@id="email"]    asd@gmail.com
    Input Text    //*[@id="password"]    Asd01
    Click Button    //*[@id="login-button"]
    Sleep    3s
    Click Element    //*[@id="cars-navbarlink"]
    Sleep    2s
    Click Button    //button[contains(., 'Törlés')]
    Sleep    1s
    Handle Alert    DISMISS
    Sleep    2s
    Close Browser