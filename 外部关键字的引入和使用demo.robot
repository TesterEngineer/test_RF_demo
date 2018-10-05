*** Settings ***
Resource    UserKeywordUtils.robot

*** Test Cases ***
外部关键字的使用demo1
    ${result}    test_sum    10    22
    Log    ${result}    
    