*** Settings ***
Library  SeleniumLibrary


*** TestCases ***
GoogleでみんなのPython勉強会を検索するテスト
    Open Browser  https://google.co.jp  Chrome
    Input Text  name=q  みんなのPython勉強会
    Press Key  name=q  \\13
    # 結果出力と検証
    ${links} =  Get Webelements  css=h3 > a
    :For  ${link}  In  @{links}
        \  ${text} =  Get Text  ${link}
        \  Log To Console  ${text}
    Length Should Be  ${links}  10
