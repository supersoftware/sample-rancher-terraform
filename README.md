# sample-rancher-terraform
TerraformでRancher HAを構築するサンプルです。

詳細は[こちら](https://capsulecloud.io/blog/?p=4733)の記事をご覧ください。

## 手順

1. `variables.tf`の変更可能な値を確認

2. `terraform.tfvars`を環境に合わせて上書き

3. `$terraform apply`を実行して構築を開始

注) 環境変数`AWS_ACCESS_KEY_ID`と`AWS_SECRET_ACCESS_KEY`をあらかじめセットしてください。

注) `$terraform destroy`で環境を破棄する際、エラーになります。Auroraのクラスターを手動で削除して再度実行してください。
