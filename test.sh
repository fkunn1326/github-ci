 curl \
   -X POST \
   -H 'Authorization: token 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' \
   -H "Accept: application/vnd.github.v3+json" \
   https://api.github.com/repos/fkunn1326/github-ci/actions/workflows/windows.yml/dispatches \
   -d '{"ref":"main"}'