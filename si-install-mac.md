## siのMacOSへのインストール方法(2024)

- IntelCPUで検証した．Apple siliconは未検証．今後検証予定．
- Macなので，NVIDIA GPUcudaが関係するプログラムはインストールしない．

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

### インストールでエラーが出た場合
- `hvd.taz`内の`s3d_mpo2`, `s3d_mj2avi`でlibjpegエラーが出る場合は，まずlibjpegをインストールする．`brew install libjpeg`

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
