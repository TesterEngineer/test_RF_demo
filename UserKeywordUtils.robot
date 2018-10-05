#自定义业务关键字
*** Keywords ***
test_sum    
    [Arguments]   ${number}    ${number2}
    #[Return]    Evaluate    ${number}+${number2}
    #[Return]    int(${number})+int(${number2})
    #${result}    Evaluate   int(${number})+int(${number2})
    ${result}    Evaluate    ${number}+${number2}
    [Return]    ${result}    