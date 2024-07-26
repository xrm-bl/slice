## siのMacOSへのインストール方法(2024)

- IntelCPUで検証済み．Apple silliconは未検証.今後検証予定
- Macなので,NVIDIA GPUcudaが関係するプログラムはインストールしない.

### 事前準備
- [sliceインストール時の事前準備](https://github.com/xrm-bl/slice/blob/main/slice-install-mac.md#%E4%BA%8B%E5%89%8D%E6%BA%96%E5%82%990)に沿って,brew, gcc@13, libtiffをインストールしておく.

### インストール
- [シェルスクリプト](https://github.com/xrm-bl/slice/blob/main/si-install.sh)（上杉氏作成のコマンドリストを元に作成した）をMacにダウンロードする（スクリプト右上のDownload raw fileボタン)．

- `sh si-install.sh`でシェルスクリプトを実行する.

- インストールが自動で進行する.

- 最後まで終わったら,`sudo cp ./bin/* /usr/local/bin`

- ターミナルを閉じて，ターミナル再起動

- 動作確認.`t-mcl`と入力して,ヘルプ文章が表示されたらOK

- 不要ファイルの削除. `rm -r ~/bin` `rm -r ~/program`

### インストールでエラーが出た場合
- エラーが出た実行ファイル（コマンド)のコンパイルを回避する．
