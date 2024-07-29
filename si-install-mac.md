## siのMacOSへのインストール方法(2024)
- Macなので，NVIDIA GPU = cudaが関係するプログラムはインストールしない．

### 事前準備
- [sliceインストール](https://github.com/xrm-bl/slice/blob/main/slice-install-mac.md)の事前準備に沿って，brew, gcc@13, libtiffをインストールしておく．

### インストール
- [シェルスクリプト](https://github.com/xrm-bl/slice/blob/main/si-install.sh)（上杉氏作成のコマンドリストを元に作成した）をMacにダウンロードする（スクリプト右上のDownload raw fileボタン)．

- `sh si-install.sh`でシェルスクリプトを実行する．

- インストールが自動で進行する．

- 最後まで終わったら，`sudo cp ./bin/* /usr/local/bin`

- ターミナルを閉じて，再起動．

- 動作確認．`t-mcl`と入力して，ヘルプ文章が表示されたらOK．

- 不要ファイルの削除．`rm -r ~/bin` `rm -r ~/program`

### インストールでエラーが出た場合①
- `hvd.taz`内の`s3d_mpo2`, `s3d_mj2avi`でlibjpegエラーが出る場合がある．

- 解決するには，まずlibjpegをインストールする．`brew install libjpeg`

- 次に，`hvd/src/Makefile.64`内の17-20行目を以下のように変更する．変更内容はApple siliconかIntelかで変わる．

- Apple siliconの場合は
```
#L_J	=-ljpeg
#L_J	=-static -ljpeg
L_J	=-I/opt/homebrew/include -L/opt/homebrew/lib -ljpeg
#L_J	=-I${HOME}/local/include -L${HOME}/local/lib -ljpeg
```

- Intelの場合は
```
#L_J	=-ljpeg
#L_J	=-static -ljpeg
L_J	=-I/usr/local/include -L/usr/local/lib -ljpeg
#L_J	=-I${HOME}/local/include -L${HOME}/local/lib -ljpeg
```

### インストールでエラーが出た場合②
- Apple siliconでは`hvd.taz`内の`si_s_bev_3`, `si_m_bev_3`, `si_s_bev_4`, `si_m_bev_4`, `si_t_bev_3`, `si_t_bev_4`, `si_x_bev_3`, `si_y_bev_3`, `si_z_bev_3`, `si_x_bev_4`, `si_y_bev_4`, `si_z_bev_4`, `stl_bev_3`, `stl_bev_4`でエラーが出る場合がある．
- エラー出力例
```
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1545:4: error: unrecognized instruction mnemonic, did you mean: fmov, mov, movi, movk, movn, movz, smov, umov?
          movl 2139095039,x9
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1547:4: error: unrecognized instruction mnemonic
          lock
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1548:4: error: unrecognized instruction mnemonic
          xchgl [x10],x9
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1549:4: error: unrecognized instruction mnemonic, did you mean: ccmp, cmle, cmlo, cmls, cmlt, cmp, fcmp?
          cmpl 2139095039,x9
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1550:4: error: unrecognized instruction mnemonic, did you mean: neg?
          jne 2f
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1552:4: error: unrecognized instruction mnemonic
          pause
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1553:4: error: unrecognized instruction mnemonic, did you mean: ccmp, cmle, cmlo, cmls, cmlt, cmp, fcmp?
          cmpl [x10],x9
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1554:4: error: unrecognized instruction mnemonic, did you mean: neg?
          jne 0b
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1555:4: error: unrecognized instruction mnemonic, did you mean: cmp?
          jmp 1b
          ^
/var/folders/1l/mjvt5cdn1n95s1gqtj0xvk280000gn/T//ccxBNl7I.s:1564:2: error: unrecognized instruction mnemonic, did you mean: fmov, mov, movi, movk, movn, movz, smov, umov?
        movl x9,[x10]
        ^
make: *** [si_m_bev_4] Error 1
```
- 原因究明中．
