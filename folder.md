# フォルダ構成

- フォルダ構成は以下の通り

```
.
└── envs
    ├── backend.tf          tfstateファイル管理定義ファイル
    ├── cloud_guard.tf      Cloud Guard定義ファイル
    ├── compartments.tf     デプロイ用コンパートメント定義ファイル
    ├── data.tf             外部データソース定義ファイル
    ├── events.tf           Events定義ファイル
    ├── iam.tf              IAM定義ファイル
    ├── locals.tf           ローカル変数定義ファイル
    ├── notifications.tf    Notifications定義ファイル
    ├── object_strage.tf    Object Strage定義ファイル
    ├── outputs.tf          リソース戻り値定義ファイル
    ├── providers.tf        プロバイダー定義ファイル
    ├── variables.tf        変数定義ファイル
    └── versions.tf         Terraformバージョン定義ファイル
```
