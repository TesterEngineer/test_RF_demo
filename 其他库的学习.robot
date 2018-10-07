*** Settings ***
Library    Screenshot    
Library    Collections
Resource   D:/robot/RF-demo/业务关键字.txt
Variables    test.py


#设置全局变量
*** Variables ***
${global}  test
@{aList}   a    b    c




*** Test Cases ***
测试情况
    Log    hell0    
    ${dic}    Create Dictionary    name1=zhangsan    age1=18    name2=lisi    age2=28
    Log    ${dic}   
    #获取字典的value
    ${dic_items}    Get Dictionary Items    ${dic}
    Log    ${dic_items} 
    ${dic_keys}    Get Dictionary Keys    ${dic}
    Log    字典的key值为:${dic_keys}
    ${dic_values}    Get Dictionary Values    ${dic}
    Log    字典的value值:${dic_values}
    ${value}    Get From Dictionary    ${dic}    name1
    Log    字典取出name相应的value值 ${value}
 
输出全局变量
    Log    ${global}    
    Log Many    @{aList}
    :FOR    ${i}    IN    @{aList}
    \    Log    数组的值是:${i}        
                    
    
