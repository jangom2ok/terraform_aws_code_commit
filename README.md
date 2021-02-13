
## 準備

### AWSアカウントを作成

`~/.aws/config` などの設定・環境構築を済ませておく

### terraform docker イメージを pull しておく

```
docker pull hashicorp/terraform:light
```

### AWSアクセスキーを設定

```terraform/aws/terraform.tfvars
aws_access_key = "ここにアクセスキーを記入"
aws_secret_key = "ここにシークレットキーを記入"
```

### 初期化

```
sh terraform/bin/terraform_aws.sh init
```

### 確認

```
sh terraform/bin/terraform_aws.sh plan
```

### 反映

```
sh terraform/bin/terraform_aws.sh apply
```
