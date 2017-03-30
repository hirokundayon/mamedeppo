# Selenium WebDriverを動かすPowerShellスクリプトの動かし方
<div style="text-align: right;">
東平洋史
</div>

1. はじめに  
   この資料は Selenium WebDriver を動かすPowerShellスクリプト edobarai.ps1 の動かし方を記述したものです。このPowerShellスクリプトは次の手順で、太宰府で開かれたOSC2011 Fukuokaのレポートを表示させます。  
   1. Webブラウザを起動します。  
   2. Googleのページを表示します。  
   3. 「OSC Fukuoka 太宰府」をキーに検索します。  
   4. 「OSC2011 Fukuoka 太宰府にて開催！！」の記事へのリンクをクリックします。  
   5. 表示されたLTの写真をクリックします。  
   6. 表示されたLTの写真をクリックします。  
   7. 10秒待ちます。  
   8. 起動したWebブラウザを終了させます。  
2. 準備  
    1. Selenium Standalone Serverのダウンロード  
    次のURLから必要なファイルを取得します。   
    <http://www.seleniumhq.org/download/>   
    + selenium-dotnet-3.3.0.zip  
    + Google Chrome Driver  
    + The Internet Explorer Driver Server  
    + Mozilla GeckoDriver  
    + Microsoft Edge Driver  

3. selenium-dotnet-3.3.0.zipの伸長  
    selenium-dotnet-3.3.0.zipを伸長します。  
    なお、各ファイルへのパス(/path/to)は予め適切なものに変更してください。  
4. PowerShellスクリプトの起動  
   以上で準備完了です。PowerShellスクリプトを起動しましょう。  
   1. Google Chromeを起動する場合  
   `> .\mamedeppo.ps1`  
   または  
   `> .\mamedeppo.ps1 chrome`  
   2. Internet Explorerを起動する場合  
   `> .\mamedeppo.ps1 ie`  
   3. Mozilla Firefoxを起動する場合  
   `> .\mamedeppo.ps1 firefox`  
   4. Microsoft Edgeを起動する場合  
   `> .\mamedeppo.ps1 edge`  
5. 参考文献  
   1. <http://seleniumhq.github.io/selenium/docs/api/dotnet/index.html>
   2. PowerShellでWebブラウザ(Selenium Webdriver)を動かした話  
      <https://www.slideshare.net/hirofumitouhei/powershellwebselenium-webdriver>  
   3. OSC2011 Fukuoka 太宰府にて開催！！  
      <https://www.ospn.jp/press/20111219osc2011-fukuoka-report.html>  
