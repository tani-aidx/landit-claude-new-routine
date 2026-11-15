#!/usr/bin/env bash
# SessionStart hook: JSTの実行日・対象日・週次対象期間をセッションに注入する（暗算による日付の取り違え防止）
export TZ=Asia/Tokyo
dow=$(date +%u)
echo "【日付（JST・コマンドで算出済み。この値を使うこと）】"
echo "- 実行日：$(date '+%Y-%m-%d (%a)')"
echo "- 対象日（日次ジョブ＝前日）：$(date -d 'yesterday' '+%Y-%m-%d (%a)')"
echo "- 週次の対象期間（直前に完了した月〜日）：$(date -d "-$((dow + 6)) days" '+%Y-%m-%d (%a)') 〜 $(date -d "-${dow} days" '+%Y-%m-%d (%a)')"
