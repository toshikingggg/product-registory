# Docker + Herokuで超簡単なアプリをデプロイ

↓こんなやつ 名前と金額と取引先を入れると記録される

![スクリーンショット 2021-03-05 15 51 03](https://user-images.githubusercontent.com/69241625/110078336-f0197c80-7dca-11eb-9df4-3ebd7f6e9d3c.png)

## ざっくりな流れ(
### ローカルで動くものを作る→テスト環境に通してみる→本番環境にデプロイ
1. Dockerで環境を作る(今回はrails+postgresをインストールしますよ〜ってことをDockerfileに記載しておく)→楽するためにdocker-composeも使う(自動でrunしてくれたりする)
2. 適当にソースを編集する(ここは普通にhtmlを編集したり色々)
3. ローカルで動くなにかが出来上がったらTravis CIを使ってテストをする(gitにpushすると自動でビルドしてくれたりしてちゃんと動きそうか確かめてくれる便利)
4. herokuにpushする
5. <a href="https://sugar-king-product-register.herokuapp.com/">アクセスしたら表示される</a>
