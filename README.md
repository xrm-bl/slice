### 2024年現在のsliceインストール・動作挙動についてのページ

### ソースコード，バイナリ，オリジナルのマニュアルは[http://www-bl20.spring8.or.jp/slice/index.html](http://www-bl20.spring8.or.jp/slice/index.html)へ

### sliceのインストール方法（2024年版）は[こちら](https://github.com/xrm-bl/slice/blob/main/slice-install-mac.md)
- Apple silicon, IntelともにインストールOK

### siのインストール方法（2024年版）は[こちら](https://github.com/xrm-bl/slice/blob/main/si-install-mac.md)
- Apple siliconでは`si_s_bev_3`, `si_m_bev_3`, `si_s_bev_4`, `si_m_bev_4`, `si_t_bev_3`, `si_t_bev_4`, `si_x_bev_3`, `si_y_bev_3`, `si_z_bev_3`, `si_x_bev_4`, `si_y_bev_4`, `si_z_bev_4`, `stl_bev_3`, `stl_bev_4`がインストールできない．
- Intelは全コマンドインストールOK

### ベンチマークは[こちら](https://github.com/xrm-bl/slice/blob/main/mac-benchmark/report_20240731.md)
- 1~2Kのデータの処理は数秒〜数分以内で終わる．
- Apple siliconでも，リスライシング（3K x 400枚以上）やボリュームレンダリング（3K, 6K）の処理には時間がかかる．
- Rosetta2(Intel)で実行するよりも，Apple siliconで実行する方が，最大で２倍程度速い．ただし，大きいデータほどその差は小さいので，ファイルの読み書き速度の律速も大きいと思われる．

### 動作検証に用いたマシン
- Macbook Air(Apple M3チップ(8コアCPU，10コアGPU，16コアNeural Engine搭載),24GBユニファイドメモリ）
