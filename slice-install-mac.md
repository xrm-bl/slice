## SliceのMacOSへのインストール方法(2024)

- [Apple siliconでの方法](#Apple-siliconでの方法)   
- [Intel CPUでの方法](#Intel-CPUでの方法)     

### Apple silicon(M1, M2, ...)での方法
#### 事前準備
- ターミナルを起動する．
- `uname -m`で`arm64`と表示されることを確認する．
- homebrewをインストールする．
https://brew.sh/ja/

- gcc ver.13をインストールする．
`brew install gcc@13`
  - `@13`をつけないと，最新版ver14がインストールされてしまう．最新版では，コンパイル時にエラーが出てしまう．

- gcc ver.13へのパスを通す．`ln -s /opt/homebrew/bin/gcc-13 /usr/local/bin/gcc`　`ln -s /opt/homebrew/bin/g++-13 /usr/local/bin/g++`   
ターミナルを再起動する．
  - これをやらないと，プリインストールされているClangのgccが実行されてしまい，やはりコンパイル時にエラーが出てしまう．   
  - 参考：https://zenn.dev/minguu42/articles/20220722-how-to-use-gcc-on-mac

- libtiffをインストールする．
`brew install libtiff`
  - 筆者が試した時点でのバージョンは4.6.0
  - https://formulae.brew.sh/formula/libtiff

#### インストール
- http://www-bl20.spring8.or.jp/slice/index.html からslice100407.tar.gzをダウンロードする．
  - コマンドでは`wget http://www-bl20.spring8.or.jp/slice/file/slice100407.tar.gz`
  - wgetコマンドがインストールされていない場合は`brew install wget` 

- ダウンロードしたファイルを展開する
`tar xvzf slice100407.tar.gz`

- sliceディレクトリに移動する
`cd slice`

- Makefileを書き換える．`nano slice/src/Makefile`として，最初の２行を以下のように書き換える．この作業を行わないと，libtiffを使ったコンパイルでエラーが出る．

```
INCLUDE	=-I/opt/homebrew/include
LIB	=-L/opt/homebrew/lib
```

- 以降はPDFのマニュアル通り．

- libtiffはbrewでインストール済みなので，ここではインストールしない．

- `make all`

- `make install`

- `sudo cp ./bin/* /usr/local/bin`

- ターミナルを閉じて，ターミナル再起動

- 動作確認．`slicePVR`と入力して，`usage : slicePVR orgDir nameFile {newDir}`と表示されたらOK

- 不要ファイルの削除．`rm -r slice` `rm slice100407.tar.gz`

### Intel CPUでの方法   
#### 事前準備
- ターミナルを起動する．
  
- `uname -m`で`x86_64`と表示されることを確認する．
  
- homebrewをインストールする．M1以降のMacの場合は，Intel版 (x64版)のターミナルからインストールする．
https://qiita.com/funatsufumiya/items/cec08f1ba3387edc2eed

- gcc ver.13をインストールする．
`brew install gcc@13`
  - `@13`をつけないと，最新版ver14がインストールされてしまう．最新版では，コンパイル時にエラーが出てしまう．

- gcc ver.13へのパスを通す．`ln -s /usr/local/bin/gcc-13 /usr/local/bin/gcc`　`ln -s /usr/local/bin/g++-13 /usr/local/bin/g++`   
ターミナルを再起動する．
  - これをやらないと，プリインストールされているClangのgccが実行されてしまい，やはりコンパイル時にエラーが出てしまう．   
  - 参考：https://zenn.dev/minguu42/articles/20220722-how-to-use-gcc-on-mac

- libtiffをインストールする．
`brew install libtiff`
  - 筆者が試した時点でのバージョンは4.6.0
  - https://formulae.brew.sh/formula/libtiff

#### インストール
- 以降はPDFのマニュアル通り．

- http://www-bl20.spring8.or.jp/slice/index.html からslice100407.tar.gzをダウンロードする．
  - コマンドでは`wget http://www-bl20.spring8.or.jp/slice/file/slice100407.tar.gz`
  - wgetコマンドがインストールされていない場合は`brew install wget` 

- ダウンロードしたファイルを展開する
`tar xvzf slice100407.tar.gz`

- sliceディレクトリに移動する
`cd slice`

- libtiffはbrewでインストール済みなので，ここではインストールしない．

- `make all`

- `make install`

- `sudo cp ./bin/* /usr/local/bin`

- ターミナルを閉じて，ターミナル再起動

- 動作確認．`slicePVR`と入力して，`usage : slicePVR orgDir nameFile {newDir}`と表示されたらOK

- 不要ファイルの削除．`rm -r slice` `rm slice100407.tar.gz`
