<# PowerShell サブルーチン #>

. ".\\mamedeppoSub.ps1"

<# 引数で起動するWebブラウザを指定 #>
$browser = $Args -join " ";

<# ブラウザ起動 #>
$driver=newSession $browser

<# Windowを最大化 #>
$response=maximizeWindow $driver

<# Googleのページへ移動 #>
$response=goURL $driver "http://www.google.co.jp/"

<# 表示待ち #>
$response=waitForTitle $driver "Google"

<# 「OSC Fukuoka 太宰府」を検索 #>
$element=getElementByName $driver "q"

$response=clearElement $element
$response=sendKeysToElement $element "OSC Fukuoka 太宰府"
$response=submitElement $element

<# 検索結果が表示されるまで待つ #>
$response=waitForTitle $driver "OSC Fukuoka 太宰府 - Google 検索"

<# OSC2011 Fukuoka のレポートを表示させる #>
$element=getElementByPartialLinkText $driver "OSC2011 Fukuoka 太宰府にて開催！！"

$response=clickElement $element

<# レポートが表示されるまで待つ #>
$response=waitForTitle $driver "OSC2011 Fukuoka 太宰府にて開催！！"

<# LTの写真を表示 #>
$CSSselector = "img[title='仏様に見守られながらのLT']";
$element=getElementByCSSselector $driver $CSSselector

$response=clickElement $element

<# 写真が表示されるまで待つ #>
$response=waitForTitle $driver "仏様に見守られながらのLT"

<# 写真をクリック #>
$CSSselector = "a[href='https://www.ospn.jp/press/wp-content/uploads/2011/12/LT.jpg']"
$element=getElementByCSSselector $driver $CSSselector

$response=clickElement $element

<# 10秒待つ #>
Start-Sleep -s 10

<# 終了処理 #>
$response=closeSession $driver
