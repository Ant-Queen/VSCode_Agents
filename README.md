# VS Code Agents 문서 변경 추적

VS Code 공식 Agents 문서를 날짜별로 저장하고 변경 내용을 비교하기 위한 작업 공간입니다.

## 구성

```text
VSCode_Agents/
├─ VSCode Docs Agents_260826.md   # 2026-08-26에 기록한 URL 목록
├─ scripts/
│  └─ save-snapshot.ps1           # URL 목록에서 문서 스냅샷 저장
└─ snapshots/                     # 실행할 때 날짜별로 생성되는 본문 파일
```

## 오늘의 문서 저장

PowerShell에서 작업 공간 폴더로 이동한 뒤 실행합니다.

```powershell
.\scripts\save-snapshot.ps1 -IndexFile '.\VSCode Docs Agents_260826.md'
```

기본적으로 오늘 날짜(`yyyy-MM-dd`)의 폴더를 만들고 각 URL의 다음 파일을 저장합니다.

- `*.html`: 서버에서 받은 원본 HTML
- `*.md`: 비교하기 쉽도록 HTML에서 추출한 본문 텍스트
- `manifest.json`: URL, 제목, 저장 시각, 파일명을 기록한 목록

같은 날짜에 다시 실행하면 해당 날짜 폴더의 파일을 갱신합니다. `SnapshotDate`는 실제로 그 날짜에 저장한 스냅샷을 복구하거나, 웹 아카이브에서 받은 과거 응답을 정리할 때만 지정합니다. 오늘 받은 내용을 과거 날짜로 저장하면 안 됩니다.

## 변경 내용 비교

나중에 새 날짜의 스냅샷을 만든 뒤 두 날짜의 같은 문서를 비교합니다.

```powershell
code --diff `
  '.\snapshots\2026-08-26\docs-agents-overview.md' `
  '.\snapshots\<다음-저장-날짜>\docs-agents-overview.md'
```

목록 자체의 추가·삭제·이동은 날짜별 인덱스 파일을 Git으로 비교합니다.

```powershell
git diff --no-index `
  '.\VSCode Docs Agents_260826.md' `
  '.\VSCode Docs Agents_<다음날짜>.md'
```

## 참고

페이지가 삭제되었거나 네트워크에서 현재 내용만 제공되는 경우에는 Internet Archive의 저장본을 별도로 확인해야 합니다. VS Code 문서의 원본이 공개 저장소에서 관리되는 경우에는 해당 저장소의 커밋 이력도 함께 확인하면 웹페이지 스냅샷보다 세밀한 변경 원인을 파악할 수 있습니다.