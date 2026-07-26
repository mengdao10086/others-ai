#!/bin/bash
set -e
cd "$(dirname "$0")"

OWNER=mengdao10086
REPO=-
BRANCH=main
FILE_PATH="LSPosed模块/app/build.gradle.kts"
COMMIT_MSG="修复构建：compileOnly(file()) → compileOnly(files()) Kotlin DSL 语法修正"
TMPDIR="$(mktemp -d)"

echo "=== 1. 读取当前 HEAD ==="
HEAD_SHA=$(gh api repos/$OWNER/$REPO/git/ref/heads/$BRANCH -q '.object.sha')
echo "HEAD: $HEAD_SHA"

echo "=== 2. 创建 blob ==="
CONTENT_B64=$(base64 -w0 < "$FILE_PATH")
cat > "$TMPDIR/blob.json" <<ENDJSON
{"content":"$CONTENT_B64","encoding":"base64"}
ENDJSON
BLOB_SHA=$(gh api repos/$OWNER/$REPO/git/blobs --input "$TMPDIR/blob.json" -q '.sha')
echo "BLOB: $BLOB_SHA"

echo "=== 3. 创建 tree ==="
BASE_TREE=$(gh api repos/$OWNER/$REPO/git/commits/$HEAD_SHA -q '.tree.sha')

cat > "$TMPDIR/tree.json" <<ENDJSON
{
  "base_tree": "$BASE_TREE",
  "tree": [
    {
      "path": "$FILE_PATH",
      "mode": "100644",
      "type": "blob",
      "sha": "$BLOB_SHA"
    }
  ]
}
ENDJSON

NEW_TREE=$(gh api repos/$OWNER/$REPO/git/trees --input "$TMPDIR/tree.json" -q '.sha')
echo "NEW_TREE: $NEW_TREE"

echo "=== 4. 创建 commit ==="
cat > "$TMPDIR/commit.json" <<ENDJSON
{
  "message": "$COMMIT_MSG",
  "tree": "$NEW_TREE",
  "parents": ["$HEAD_SHA"]
}
ENDJSON

NEW_COMMIT=$(gh api repos/$OWNER/$REPO/git/commits --input "$TMPDIR/commit.json" -q '.sha')
echo "COMMIT: $NEW_COMMIT"

echo "=== 5. 更新 ref ==="
cat > "$TMPDIR/ref.json" <<ENDJSON
{"sha":"$NEW_COMMIT","force":true}
ENDJSON

gh api repos/$OWNER/$REPO/git/refs/heads/$BRANCH -X PATCH --input "$TMPDIR/ref.json" -q '.ref'
echo ""
echo "✅ 推送成功！"

rm -rf "$TMPDIR"
