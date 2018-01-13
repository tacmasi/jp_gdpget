内閣府webから最新版四半期名目GDPをgetするスクリプト(gdpget.sh)

### 使用法

``` shell-session
$ ./gdpget.sh
(略)
nominalgdp.csvへ名目GDPデータを保存しました

$ head -3 nominalgdp.csv
time,国内総生産(支出側),民間最終消費支出,家計消費,持家帰属家賃を除く家計消費,民間住宅,民間企業設備,民間在庫変動,政府最終消費支出,公的固定資本形成,純輸出,輸出,輸入
1994/1-3.,12796.3,6829.3,6215.9,5617.9,984.4,2312.5,-480.9,1358.4,1191.5,-113.7,714.8,1249.3
4-6.,12571.1,6713.6,6447.8,5747.1,320.7,1545.6,820.6,2182.0,672.2,31.8,284.6,1981.7

$ tail -3 nominalgdp.csv 
2017/1-3.,13617.5,7058.5,7411.6,6932.7,303.3,2086.5,-960.8,2349.5,539.9,8.2,232.5,2936.4
4-6.,13533.1,7956.0,7933.0,6450.6,212.8,1283.9,110.9,2360.8,737.8,0.6,870.2,2092.4
7-9.,13285.3,7531.6,7560.7,6067.4,527.5,2195.5,171.1,2566.3,593.9,1.7,697.6,2828.8

```
