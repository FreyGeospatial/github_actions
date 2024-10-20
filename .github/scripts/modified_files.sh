# echos modified python files, but excludes those deleted
changed_files=$(git diff --diff-filter=d --name-only $(git merge-base HEAD remotes/origin/main) HEAD | grep .py)
echo ${changed_files}
