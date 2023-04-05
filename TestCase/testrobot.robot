*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
My First TC
    open browser    https://sdh.com.ua/    Chrome
    maximize browser window
    sleep    1
    click link    xpath://*[@id="navbar"]/ul/li[3]/a
    sleep    1
    click button    xpath://*[@id="cookie-caution"]/div/div/button
    scroll element into view    //*[@id="feedback-form"]/p
    input text    xpath://*[@id="id_full_name"]     Микола
    input text    xpath://*[@id="id_phone"]     0957515333
    input text    xpath://*[@id="id_email"]    3030cocacola@gmail.com
    input text    xpath://*[@id="id_text"]    test
    sleep    1
    click button    xpath://*[@id="feedback-form"]/div[2]/div[3]/div/div/button
    sleep    2
    #ER: We should see error message: "Це поле є обов'язковим."
    element should contain    class:error-message    Це поле є обов'язковим.
    sleep    5
