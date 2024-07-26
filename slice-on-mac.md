## SliceのMacOSへのインストール方法(2024)

- IntelCPUで検証済み．Apple silliconは未検証.今後検証予定

- brewをインストールする．M1以降のMacの場合は，Intel版 (x64版)のターミナルからインストールする．
https://qiita.com/funatsufumiya/items/cec08f1ba3387edc2eed

- gcc ver.13をインストールする．
`brew install gcc@13`
  - `@13`をつけないと，最新版ver14がインストールされてしまう．最新版では，コンパイル時にエラーが出てしまう．

- gcc ver.13へのパスを通す．
これをやらないと，プリインストールされているClangのgccが実行されてしまい，やはりコンパイル時にエラーが出てしまう．
https://zenn.dev/minguu42/articles/20220722-how-to-use-gcc-on-mac

- libbtiffをインストールする．
`brew install libtiff`
  - 筆者が試した時点でのバージョンは4.6.0
  - https://formulae.brew.sh/formula/libtiff

- 以降はPDFのマニュアル通り．

- http://www-bl20.spring8.or.jp/slice/index.htmlからslice100407.tar.gzをダウンロードする
コマンドでは`wget http://www-bl20.spring8.or.jp/slice/index.htmlからslice100407.tar.gz`

- ダウンロードしたファイルを展開する
`tar xvzf slice100407.tar.gz`

- sliceディレクトリに移動する
`cd slice`

- libtiffはbrewでインストール済みなので,ここではインストールしない．

- `make all`

- `make install`

- `sudo cp ./bin/* /usr/local/bin`

- ターミナルを閉じて，ターミナル再起動

- 動作確認.`slicePVR`と入力して,`usage : slicePVR orgDir nameFile {newDir}`と表示されたらOK
