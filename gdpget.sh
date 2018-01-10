#!/bin/bash
wget http://www.esri.cao.go.jp/jp/sna/sokuhou/sokuhou_top.html -O sokuhou_top.html
wget http://www.esri.cao.go.jp/jp/sna/sokuhou/$(cat sokuhou_top.html |sed -e 's/\r//g' -e 's/href="/href="\n/g' -e 's/html"/html\n"/g' |grep -a1 統計表一覧|head -1) -O gdemenuja.html
curl http://www.esri.cao.go.jp/$(cat gdemenuja.html |sed -e 's/\r//g'|grep csv|grep 名目原系列|sed -e 's/href="/href="\n/g'  -e 's/csv"/csv\n"/g'|grep gaku|grep -v kgaku)|nkf > tmpa
cat tmpa|awk -F, 'NR==3||NR==4||NR>=8{print}END{}'|sed -e 's/[0-9],\([0-9]\{3\}\)./\1./g' -e 's/"//g'|awk -F, 'BEGIN{OFS=","}NR==1{NF=13;$1="time";$4="家計消費";$5="持家帰属家賃を除く家計消費";$11="純輸出";$12="輸出";$13="輸入";print}NR>=3{NF=13;print}'|sed -e 's/\t/,/g' -e 's/ //g' >nominalgdp.csv
rm sokuhou_top.html gdpmenuja.html tmpa
echo nominalgdp.csvへ名目GDPデータを保存しました
