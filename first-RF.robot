*** Settings ***
Library    DateTime 

   

*** Test Cases ***
第一个测试RF用例啊!
    ${data}=    Get Current Date     
    Log  ${data}    

第二个测试用例
    Log    这是第二个测试用例啊！   
    ${var}    Set Variable    设置变量咯！
    Log    ${var}
    ${name}=    Set Variable    张三
    ${age}=    Set Variable    18
    Log    输出name值是----->${name}
    ${man}=   Catenate    SEPARATOR=:   ${name}    ${age}
    Log    人的信息是:${man}    
    ${arrList}    Create List    arr1    arr2    arr3    arr4    arr5
    Log    定义数组的:${arrList}    
    Log    取出数组的值:${arrList[1]}
    Log Many    ${arrList}
    @{arrls}    Create List    list1    list2  
    Log Many    @{arrls}

获取时间
    #${data}=    Set Variable  Get Time
    ${data}    Get Time
    Log    当前时间是:${data}    
    Sleep    5
    ${data}    Get Time             
    Log    休息5s后时间是：${data}
    
RF的IF语句关键字
    ${socer}    Set Variable    80
    Run Keyword If    ${socer}>=80    Log    成绩优秀啊！
    #ELSE IF    Log
    ...    ELSE IF    60<=${socer}<80    Log    成绩及格！    
    #...    ELSE    Log    成绩不及格哦！
    #Log    ${socer}   
    ...    ELSE IF    ${socer}<60    Log    对不起，成绩不及格！    
       
RF的For循环
    ${arrList}    Create List    A    B    C
    # :FOR    ${i}    in    ${arrList}
    # \    Log    ${i}
    :FOR    ${i}    IN RANGE    10
    \    Log    ${i}    
    #\       Run Keyword If    ${i} == 'A'    Log    输出了A哦
    :FOR    ${g}    IN    @{arrList}
    \    Log    ${g}
    
    
强大的关键字Evaluate
    #执行python的内置函数
    ${num}    Evaluate   random.randint(100,1400)    random
    Log    执行python内置函数:${num}    
    #Evaluate    os.system("python D:\robot\RF-demo\test.py")    os
    #导入外部的python语言
    Import Library   D:/robot/RF-demo/test.py
    #注意：这里传递的值是默认传到python里面 '4' '5'
    #add2就是test.py定义的函数
    Comment    这是一个注释的关键字
    ${num}    add2     4    5
    Log    ${num}    
       
使用自定义关键字的执行
    ${return_msg}    for_test    10    1    
    Log    ${return_msg}     
    
测试断言
    Should Be Equal    1    2        
        
*** Keyword ***
for_test
    #传递参数
    [Arguments]    ${number}    ${number2}       
    :FOR    ${i}    IN RANGE    ${number} 
    \    Log    自定义关键字-->${i} 
    [Return]    这是返回自定义关键字的值哦！你执行了for_test关键字，传递第一个参数是${number},第二个参数是${number2}


