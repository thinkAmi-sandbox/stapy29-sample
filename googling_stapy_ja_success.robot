*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
ChromeでGoogleを開く
    Open Browser  https://google.co.jp  Chrome

みんなのPython勉強会を検索する
    Input Text  name=q  みんなのPython勉強会
    Press Key  name=q  \\13

結果を取得する
    ${links} =  Get Webelements  css=h3 > a
    Return From Keyword  ${links}

結果「${links}」をターミナルに出力する
    :For  ${link}  In  @{links}
        \  ${text} =  Get Text  ${link}
        \  Log To Console  ${text}

結果「${links}」は13件であること
    Length Should Be  ${links}  13


*** TestCases ***
GoogleでみんなのPython勉強会を検索するテスト
    ChromeでGoogleを開く
    みんなのPython勉強会を検索する
    ${links} =  結果を取得する
    結果「${links}」をターミナルに出力する
    # 2017/10/12現在、13件取得できるため、以下は成功する
    結果「${links}」は13件であること
