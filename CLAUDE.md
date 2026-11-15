# landit-claude-new-routine

ランディットの業界ニュースジョブ（Claude Codeルーティン）の実行用リポジトリ。コードは含まない。
仕様の本体はNotionにある。基準を変えるときはNotion側を編集する。

## 全ジョブ共通の決まり（Notionページの記述より優先）

- 無人実行。ユーザーに質問・確認・停止をせず、最後まで完了する。
- このリポジトリのファイルは変更・コミットしない。
- 日付はSessionStartフックが注入した値を使う（暗算しない）。注入が無い場合は `TZ=Asia/Tokyo date` で算出する。
- 最初に「ニュースジョブ共通ルール」を読む：https://app.notion.com/p/4196e565ac0a81c49d14dcf9459fc34e
- Notionの既存レコードの削除・アーカイブはしない。書いてよい項目は各ジョブの仕様ページに従う。
- 問題が起きたら「📋 ニュースジョブ実行ログ」に記録して続行する。

## ジョブと仕様ページ

| ジョブ | 仕様ページ |
|---|---|
| A 業界ニュース収集（毎日） | https://app.notion.com/p/4196e565ac0a81868da5fd007b030347 |
| B LT選定・Slack配信（毎日） | https://app.notion.com/p/4196e565ac0a81a9b4b2e7df20b04d91 |
| C 週次サマリー（毎週月曜） | https://app.notion.com/p/4196e565ac0a81e086ffe48c1efdc521 |
