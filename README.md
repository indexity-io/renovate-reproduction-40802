# renovate-reproduction-40802

This is a reproduction for https://github.com/renovatebot/renovate/discussions/40802

To reproduce the problem, run:

```sh
docker run \
  --rm \
  -v $PWD/renovate.json:/usr/src/app/renovate.json \
  -e LOG_LEVEL=${LOG_LEVEL:-debug} \
  -e RENOVATE_TOKEN=$RENOVATE_TOKEN \
  -e RENOVATE_REPOSITORIES="indexity-io/renovate-reproduction-40802" \
  --network host \
  -it \
  renovate/renovate:42.74.2
```

<details><summary>Logs</summary>

```
DEBUG: Using RE2 regex engine
DEBUG: Parsing configs
DEBUG: No config file found on disk - skipping
DEBUG: No additional config file found specified - skipping
DEBUG: File config
       "config": {}
DEBUG: Additional file config
       "config": {}
DEBUG: CLI config
       "config": {}
DEBUG: Env config
       "config": {
         "hostRules": [],
         "token": "***********",
         "repositories": ["indexity-io/renovate-reproduction-40340"]
       }
DEBUG: Resolved global extends
       "config": undefined
DEBUG: Combined config
       "config": {
         "hostRules": [],
         "token": "***********",
         "repositories": ["indexity-io/renovate-reproduction-40340"]
       }
DEBUG: Enabling forkProcessing while in non-autodiscover mode
DEBUG: Enabling onboardingNoDeps while in non-autodiscover mode
DEBUG: Found valid git version: 2.52.0
DEBUG: Setting global hostRules
DEBUG: Using default github endpoint: https://api.github.com/
DEBUG: hostRules: authentication already set for api.github.com
DEBUG: Using queue: host=api.github.com, concurrency=16
(node:9) [DEP0169] DeprecationWarning: `url.parse()` behavior is not standardized and prone to errors that have security implications. Use the WHATWG URL API instead. CVEs are not issued for `url.parse()` vulnerabilities.
(Use `node --trace-deprecation ...` to show where the warning was created)
DEBUG: GET https://api.github.com/user/emails = (code=ERR_NON_2XX_3XX_RESPONSE, statusCode=403 retryCount=0, duration=291)
DEBUG: Cannot read user/emails endpoint on GitHub to retrieve gitAuthor
DEBUG: Platform config
       "platformConfig": {
         "hostType": "github",
         "endpoint": "https://api.github.com/",
         "isGHApp": false,
         "isGhe": false,
         "userDetails": {"username": "timw", "name": "Tim Whittington", "id": 670828},
         "userEmail": null
       },
       "renovateUsername": "timw"
DEBUG: Adding token authentication for api.github.com (hostType=github) to hostRules
DEBUG: Using baseDir: /tmp/renovate
DEBUG: Using cacheDir: /tmp/renovate/cache
DEBUG: Using containerbaseDir: /tmp/renovate/cache/containerbase
DEBUG: Initializing Renovate internal cache into /tmp/renovate/cache/renovate/renovate-cache-v1
DEBUG: Commits limit = null
DEBUG: Setting global hostRules
DEBUG: Adding token authentication for api.github.com (hostType=github) to hostRules
DEBUG: validatePresets()
DEBUG: Reinitializing hostRules for repo
DEBUG: Clearing hostRules
DEBUG: Adding token authentication for api.github.com (hostType=github) to hostRules
 INFO: Repository started (repository=indexity-io/renovate-reproduction-40340)
       "renovateVersion": "42.74.2"
DEBUG: Using localDir: /tmp/renovate/repos/github/indexity-io/renovate-reproduction-40340 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: PackageFiles.clear() - Package files deleted (repository=indexity-io/renovate-reproduction-40340)
DEBUG: initRepo("indexity-io/renovate-reproduction-40340") (repository=indexity-io/renovate-reproduction-40340)
DEBUG: hostRules: authentication already set for api.github.com (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using queue: host=api.github.com, concurrency=16 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: indexity-io/renovate-reproduction-40340 default branch = main (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issues cache: Adding 1 issues to reconcile queue (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using personal access token for git init (repository=indexity-io/renovate-reproduction-40340)
DEBUG: fetchBranchCommits(): url=https://**redacted**@github.com/indexity-io/renovate-reproduction-40340.git (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Resetting npmrc (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Resetting npmrc (repository=indexity-io/renovate-reproduction-40340)
DEBUG: checkOnboarding() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: isOnboarded() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/configure, Configure Renovate, !open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: PR cache: cached data not found, creating new cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: PR cache: initial fetch (repository=indexity-io/renovate-reproduction-40340)
DEBUG: http cache: saving https://api.github.com/repos/indexity-io/renovate-reproduction-40340/pulls?per_page=100&state=all&sort=updated&direction=desc&page=1 (etag=W/"fcf2434b55d63cf90c669d1aa2acae69b81dfd687fda4215fe1da18c9ef5c7d7", lastModified=undefined) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: PR cache: Filtered 7 PRs to 7 (user=timw) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: PR cache: getPrList success (repository=indexity-io/renovate-reproduction-40340)
       "pullsTotal": 7,
       "requestsTotal": 1,
       "apiQuotaAffected": true
DEBUG: Found PR #1 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findFile(renovate.json) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: syncGit(): Initializing git repository into /tmp/renovate/repos/github/indexity-io/renovate-reproduction-40340 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Performing blobless clone (repository=indexity-io/renovate-reproduction-40340)
DEBUG: git clone completed (repository=indexity-io/renovate-reproduction-40340)
       "durationMs": 2172
DEBUG: latest repository commit (repository=indexity-io/renovate-reproduction-40340)
       "latestCommit": {
         "hash": "f0f126f99664640635aab57489e03a8231493415",
         "date": "2026-01-30T10:53:00+13:00",
         "message": "Initial commit",
         "refs": "HEAD -> main, origin/main, origin/HEAD",
         "body": "",
         "author_name": "Tim Whittington",
         "author_email": "tim.whittington@indexity.io"
       }
DEBUG: Current branch SHA: f0f126f99664640635aab57489e03a8231493415 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Config file exists, fileName: renovate.json (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Retrieving issueList (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Retrieved 1 issues (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issues cache: Setting 1 issues in cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Repo is onboarded (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found renovate.json config file (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Repository config (repository=indexity-io/renovate-reproduction-40340)
       "fileName": "renovate.json",
       "config": {
         "$schema": "https://docs.renovatebot.com/renovate-schema.json",
         "extends": ["config:recommended", "docker:pinDigests"],
         "prHourlyLimit": 20
       }
DEBUG: migrateAndValidate() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: No config migration necessary (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found repo ignorePaths (repository=indexity-io/renovate-reproduction-40340)
       "ignorePaths": [
         "**/node_modules/**",
         "**/bower_components/**",
         "**/vendor/**",
         "**/examples/**",
         "**/__tests__/**",
         "**/test/**",
         "**/tests/**",
         "**/__fixtures__/**"
       ]
DEBUG: http cache: saving https://api.github.com/repos/indexity-io/renovate-reproduction-40340/dependabot/alerts?state=open&direction=asc&per_page=100 (etag="dc0a8aa3311a5ff9b6d75ca9f04aed7142a6c957458893baacea4cb1eb32ce94", lastModified=undefined) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: No vulnerability alerts found (repository=indexity-io/renovate-reproduction-40340)
DEBUG: No vulnerability alerts found (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findIssue(Dependency Dashboard) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found issue 3 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: http cache: saving https://api.github.com/repos/indexity-io/renovate-reproduction-40340/issues/3 (etag=W/"18d2558912562f162d9f82f011fff3afda213f7bd3a18077bffc9d6e05f20b35", lastModified=Thu, 29 Jan 2026 22:34:42 GMT) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issues cache: Updating issue 3 in cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: No baseBranches (repository=indexity-io/renovate-reproduction-40340)
DEBUG: extract() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Setting current branch to main (repository=indexity-io/renovate-reproduction-40340)
DEBUG: latest commit (repository=indexity-io/renovate-reproduction-40340)
       "branchName": "main",
       "latestCommitDate": "2026-01-30T10:53:00+13:00",
       "sha": "f0f126f99664640635aab57489e03a8231493415"
DEBUG: Using file pattern: /(^|/)tasks/[^/]+\.ya?ml$/ for manager ansible (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)(galaxy|requirements)(\.ansible)?\.ya?ml$/ for manager ansible-galaxy (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.tool-versions$/ for manager asdf (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/).azuredevops/.+\.ya?ml$/ for manager azure-pipelines (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /azure.*pipelines?.*\.ya?ml$/ for manager azure-pipelines (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)batect(-bundle)?\.ya?ml$/ for manager batect (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)batect$/ for manager batect-wrapper (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)WORKSPACE(|\.bazel|\.bzlmod)$/ for manager bazel (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.WORKSPACE\.bazel$/ for manager bazel (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.bzl$/ for manager bazel (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/|\.)MODULE\.bazel$/ for manager bazel-module (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.bazelversion$/ for manager bazelisk (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.bicep$/ for manager bicep (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.?bitbucket-pipelines\.ya?ml$/ for manager bitbucket-pipelines (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)bitrise\.ya?ml$/ for manager bitrise (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /buildkite\.ya?ml/ for manager buildkite (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.buildkite/.+\.ya?ml$/ for manager buildkite (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)project\.toml$/ for manager buildpacks (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)bun\.lockb?$/ for manager bun (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)package\.json$/ for manager bun (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.bun-version$/ for manager bun-version (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Gemfile$/ for manager bundler (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.cake$/ for manager cake (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Cargo\.toml$/ for manager cargo (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.circleci/.+\.ya?ml$/ for manager circleci (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)cloudbuild\.ya?ml/ for manager cloudbuild (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Podfile$/ for manager cocoapods (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)([\w-]*)composer\.json$/ for manager composer (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)conanfile\.(txt|py)$/ for manager conan (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.copier-answers(\..+)?\.ya?ml/ for manager copier (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)cpanfile$/ for manager cpanfile (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^\.crow(?:/[^/]+)?\.ya?ml$/ for manager crow (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)(?:deps|bb)\.edn$/ for manager deps-edn (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)devbox\.json$/ for manager devbox (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^.devcontainer/devcontainer.json$/ for manager devcontainer (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^.devcontainer.json$/ for manager devcontainer (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)(?:docker-)?compose[^/]*\.ya?ml$/ for manager docker-compose (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/|\.)([Dd]ocker|[Cc]ontainer)file$/ for manager dockerfile (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)([Dd]ocker|[Cc]ontainer)file[^/]*$/ for manager dockerfile (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.drone\.yml$/ for manager droneci (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)fleet\.ya?ml/ for manager fleet (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(?:^|/)gotk-components\.ya?ml$/ for manager flux (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.fvm/fvm_config\.json$/ for manager fvm (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.fvmrc$/ for manager fvm (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.gitmodules$/ for manager git-submodules (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)(workflow-templates|\.(?:github|gitea|forgejo)/(?:workflows|actions))/.+\.ya?ml$/ for manager github-actions (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)action\.ya?ml$/ for manager github-actions (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.gitlab-ci\.ya?ml$/ for manager gitlabci (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.gitlab-ci\.ya?ml$/ for manager gitlabci-include (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)gleam.toml$/ for manager gleam (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)go\.mod$/ for manager gomod (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.gradle(\.kts)?$/ for manager gradle (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)gradle\.properties$/ for manager gradle (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)gradle/.+\.toml$/ for manager gradle (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)buildSrc/.+\.kt$/ for manager gradle (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.versions\.toml$/ for manager gradle (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)versions.props$/ for manager gradle (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)versions.lock$/ for manager gradle (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)gradle/wrapper/gradle-wrapper\.properties$/ for manager gradle-wrapper (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.cabal$/ for manager haskell-cabal (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)requirements\.ya?ml$/ for manager helm-requirements (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)values\.ya?ml$/ for manager helm-values (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)helmfile\.ya?ml(?:\.gotmpl)?$/ for manager helmfile (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)helmfile\.d/.+\.ya?ml(?:\.gotmpl)?$/ for manager helmfile (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Chart\.ya?ml$/ for manager helmv3 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)bin/hermit$/ for manager hermit (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^Formula/[^/]+[.]rb$/ for manager homebrew (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.html?$/ for manager html (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)plugins\.(txt|ya?ml)$/ for manager jenkins (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)jsonnetfile\.json$/ for manager jsonnet-bundler (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^.+\.main\.kts$/ for manager kotlin-script (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)kustomization\.ya?ml$/ for manager kustomize (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)project\.clj$/ for manager leiningen (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/|\.)pom\.xml$/ for manager maven (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^(((\.mvn)|(\.m2))/)?settings\.xml$/ for manager maven (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.mvn/extensions\.xml$/ for manager maven (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|\/).mvn/wrapper/maven-wrapper.properties$/ for manager maven-wrapper (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|\/)mvnw(.cmd)?$/ for manager maven-wrapper (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)package\.js$/ for manager meteor (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Mintfile$/ for manager mint (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.?mise\.toml$/ for manager mise (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.?mise/config\.toml$/ for manager mise (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)mix\.exs$/ for manager mix (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)flake\.nix$/ for manager nix (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.node-version$/ for manager nodenv (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)package\.json$/ for manager npm (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)pnpm-workspace\.yaml$/ for manager npm (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.yarnrc\.yml$/ for manager npm (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.(?:cs|fs|vb)proj$/ for manager nuget (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.(?:props|targets)$/ for manager nuget (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)dotnet-tools\.json$/ for manager nuget (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)global\.json$/ for manager nuget (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.nvmrc$/ for manager nvm (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)src/main/features/.+\.json$/ for manager osgi (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)pyproject\.toml$/ for manager pep621 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)[\w-]*requirements([-.]\w+)?\.(txt|pip)$/ for manager pip_requirements (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)setup\.py$/ for manager pip_setup (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Pipfile$/ for manager pipenv (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)pyproject\.toml$/ for manager pixi (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)pixi\.toml$/ for manager pixi (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)pyproject\.toml$/ for manager poetry (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.pre-commit-config\.ya?ml$/ for manager pre-commit (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)pubspec\.ya?ml$/ for manager pub (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Puppetfile$/ for manager puppet (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.python-version$/ for manager pyenv (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /.+\.container$/ for manager quadlet (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /.+\.image$/ for manager quadlet (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /.+\.volume$/ for manager quadlet (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: renovate.json for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: renovate.json5 for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: .github/renovate.json for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: .github/renovate.json5 for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: .gitlab/renovate.json for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: .gitlab/renovate.json5 for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: .renovaterc for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: .renovaterc.json for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: .renovaterc.json5 for manager renovate-config-presets (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.ruby-version$/ for manager ruby-version (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)runtime.txt$/ for manager runtime-version (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.sbt$/ for manager sbt (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /project/[^/]*\.scala$/ for manager sbt (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /project/build\.properties$/ for manager sbt (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)repositories$/ for manager sbt (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.scalafmt.conf$/ for manager scalafmt (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)setup\.cfg$/ for manager setup-cfg (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)Package\.swift/ for manager swift (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: **/*.tf for manager terraform (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: **/*.tofu for manager terraform (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.terraform-version$/ for manager terraform-version (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)terragrunt\.hcl$/ for manager terragrunt (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.terragrunt-version$/ for manager terragrunt-version (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.tflint\.hcl$/ for manager tflint-plugin (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^\.travis\.ya?ml$/ for manager travis (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /\.typ$/ for manager typst (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: **/ProjectSettings/ProjectVersion.txt for manager unity3d (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)\.vela\.ya?ml$/ for manager velaci (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /(^|/)vendir\.yml$/ for manager vendir (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: /^\.woodpecker(?:/[^/]+)?\.ya?ml$/ for manager woodpecker (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: **/tsconfig.json for manager regex (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using file pattern: **/tsconfig.*.json for manager regex (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Matched 1 file(s) for manager dockerfile: container/Dockerfile (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Matched 1 file(s) for manager renovate-config-presets: renovate.json (repository=indexity-io/renovate-reproduction-40340)
DEBUG: manager extract durations (ms) (repository=indexity-io/renovate-reproduction-40340)
       "managers": {"dockerfile": 2, "renovate-config-presets": 1}
DEBUG: Found dockerfile package files (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found 1 package file(s) (repository=indexity-io/renovate-reproduction-40340)
 INFO: Dependency extraction complete (repository=indexity-io/renovate-reproduction-40340, baseBranch=main)
       "stats": {
         "managers": {"dockerfile": {"fileCount": 1, "depCount": 3}},
         "total": {"fileCount": 1, "depCount": 3}
       }
DEBUG: hostRules: no authentication for hub.docker.com (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using queue: host=hub.docker.com, concurrency=16 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Using the `tag_last_pushed` to determine the age of a release from Docker Hub. If this is a digest update, it may lead to inconsistent behaviour, showing the digest as newer than it actually is (repository=indexity-io/renovate-reproduction-40340)
       "documentationUrl": "https://github.com/renovatebot/renovate/issues/38659"
DEBUG: getLabels(https://index.docker.io, library/eclipse-temurin, latest) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Docker Hub library image - skipping label lookup (repository=indexity-io/renovate-reproduction-40340)
DEBUG: PackageFiles.add() - Package file saved for base branch (repository=indexity-io/renovate-reproduction-40340, baseBranch=main)
DEBUG: Package releases lookups complete (repository=indexity-io/renovate-reproduction-40340, baseBranch=main)
DEBUG: No releaseTimestamp for docker.io/library/eclipse-temurin update to undefined (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Repository libYears (repository=indexity-io/renovate-reproduction-40340)
       "libYears": {"managers": {"dockerfile": 0.23812508958016235}, "total": 0.23812508958016235},
       "dependencyStatus": {"outdated": 3, "total": 3}
DEBUG: branchifyUpgrades (repository=indexity-io/renovate-reproduction-40340)
DEBUG: detectSemanticCommits() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: getCommitMessages (repository=indexity-io/renovate-reproduction-40340)
DEBUG: semanticCommits: detected "unknown" (repository=indexity-io/renovate-reproduction-40340)
DEBUG: semanticCommits: disabled (repository=indexity-io/renovate-reproduction-40340)
DEBUG: 5 flattened updates found: docker.io/library/eclipse-temurin, docker.io/eclipse-temurin, eclipse-temurin, eclipse-temurin, eclipse-temurin (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Returning 3 branch(es) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Branch is not pending, removing pending upgrades (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Branch is not pending, removing pending upgrades (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Branch is not pending, removing pending upgrades (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: config.repoIsOnboarded=true (repository=indexity-io/renovate-reproduction-40340)
DEBUG: packageFiles with updates (repository=indexity-io/renovate-reproduction-40340, baseBranch=main)
       "config": {
         "dockerfile": [
           {
             "deps": [
               {
                 "depName": "docker.io/library/eclipse-temurin",
                 "packageName": "docker.io/library/eclipse-temurin",
                 "currentValue": "21.0.8_9-jdk",
                 "replaceString": "docker.io/library/eclipse-temurin:21.0.8_9-jdk",
                 "autoReplaceStringTemplate": "{{depName}}{{#if newValue}}:{{newValue}}{{/if}}{{#if newDigest}}@{{newDigest}}{{/if}}",
                 "datasource": "docker",
                 "depType": "stage",
                 "updates": [
                   {
                     "isPinDigest": true,
                     "updateType": "pinDigest",
                     "newValue": "21.0.8_9-jdk",
                     "newDigest": "sha256:7d1d666ddafac14da0ded6b4b076becf76cf88b31f9d7953a76555cc82f86511",
                     "branchName": "renovate/pin-dependencies"
                   }
                 ],
                 "versioning": "docker",
                 "warnings": [],
                 "registryUrl": "https://index.docker.io",
                 "lookupName": "library/eclipse-temurin",
                 "currentVersion": "21.0.8_9",
                 "currentVersionTimestamp": "2025-10-24T21:17:07.023Z",
                 "currentVersionAgeInDays": 97,
                 "fixedVersion": "21.0.8_9-jdk"
               },
               {
                 "depName": "docker.io/eclipse-temurin",
                 "packageName": "docker.io/eclipse-temurin",
                 "currentValue": "21.0.8_9-jdk",
                 "replaceString": "docker.io/eclipse-temurin:21.0.8_9-jdk",
                 "autoReplaceStringTemplate": "{{depName}}{{#if newValue}}:{{newValue}}{{/if}}{{#if newDigest}}@{{newDigest}}{{/if}}",
                 "datasource": "docker",
                 "depType": "stage",
                 "updates": [
                   {
                     "isPinDigest": true,
                     "updateType": "pinDigest",
                     "newValue": "21.0.8_9-jdk",
                     "newDigest": "sha256:7d1d666ddafac14da0ded6b4b076becf76cf88b31f9d7953a76555cc82f86511",
                     "branchName": "renovate/pin-dependencies"
                   }
                 ],
                 "versioning": "docker",
                 "warnings": [],
                 "registryUrl": "https://index.docker.io",
                 "lookupName": "library/eclipse-temurin",
                 "currentVersion": "21.0.8_9",
                 "currentVersionTimestamp": "2025-10-24T21:17:07.023Z",
                 "currentVersionAgeInDays": 97,
                 "fixedVersion": "21.0.8_9-jdk"
               },
               {
                 "depName": "eclipse-temurin",
                 "packageName": "eclipse-temurin",
                 "currentValue": "21.0.8_9-jdk",
                 "replaceString": "eclipse-temurin:21.0.8_9-jdk",
                 "autoReplaceStringTemplate": "{{depName}}{{#if newValue}}:{{newValue}}{{/if}}{{#if newDigest}}@{{newDigest}}{{/if}}",
                 "datasource": "docker",
                 "depType": "final",
                 "updates": [
                   {
                     "bucket": "non-major",
                     "newVersion": "21.0.9_10-jdk",
                     "newValue": "21.0.9_10-jdk",
                     "newDigest": "sha256:e8d57b6c5c73d93212a4384f588309b44bc75fd15b38f78e6a6db1b350dc4ef3",
                     "releaseTimestamp": "2026-01-19T19:14:36.568Z",
                     "newVersionAgeInDays": 10,
                     "newMajor": 21,
                     "newMinor": 0,
                     "newPatch": 9,
                     "updateType": "patch",
                     "isBreaking": false,
                     "libYears": 0.2381230829845256,
                     "branchName": "renovate/eclipse-temurin-21.x"
                   },
                   {
                     "bucket": "major",
                     "newVersion": "25.0.1_8-jdk",
                     "newValue": "25.0.1_8-jdk",
                     "newDigest": "sha256:42fc3fe6804ec612f5ef8a613f8c06d8dd578de6207336077387d4cb32edaa9b",
                     "releaseTimestamp": "2026-01-19T19:15:39.848Z",
                     "newVersionAgeInDays": 10,
                     "newMajor": 25,
                     "newMinor": 0,
                     "newPatch": 1,
                     "updateType": "major",
                     "isBreaking": true,
                     "libYears": 0.23812508958016235,
                     "branchName": "renovate/eclipse-temurin-25.x"
                   },
                   {
                     "isPinDigest": true,
                     "updateType": "pinDigest",
                     "newValue": "21.0.8_9-jdk",
                     "newDigest": "sha256:7d1d666ddafac14da0ded6b4b076becf76cf88b31f9d7953a76555cc82f86511",
                     "branchName": "renovate/pin-dependencies"
                   }
                 ],
                 "versioning": "regex:^(?<major>\\d+)?(\\.(?<minor>\\d+))?(\\.(?<patch>\\d+))?([\\._+](?<build>(\\d\\.?)+)(LTS)?)?(-(?<compatibility>.*))?$",
                 "warnings": [],
                 "registryUrl": "https://index.docker.io",
                 "lookupName": "library/eclipse-temurin",
                 "currentVersion": "21.0.8_9-jdk",
                 "currentVersionTimestamp": "2025-10-24T21:17:07.023Z",
                 "currentVersionAgeInDays": 97,
                 "isSingleVersion": true,
                 "fixedVersion": "21.0.8_9-jdk"
               }
             ],
             "packageFile": "container/Dockerfile"
           }
         ]
       }
DEBUG: detectSemanticCommits() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: semanticCommits: returning "disabled" from cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: processRepo() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Processing 3 branches: renovate/eclipse-temurin-21.x, renovate/eclipse-temurin-25.x, renovate/pin-dependencies (repository=indexity-io/renovate-reproduction-40340)
DEBUG: getBranchPr(renovate/pin-dependencies) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/pin-dependencies, undefined, open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found PR #8 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: getBranchPr(renovate/eclipse-temurin-21.x) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/eclipse-temurin-21.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: getBranchPr(renovate/eclipse-temurin-25.x) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/eclipse-temurin-25.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: 1 PRs are currently open (repository=indexity-io/renovate-reproduction-40340)
DEBUG: ConcurrentPRs count = 1 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: 1 already existing branches found. (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Branches count = 1 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Calculating PRs created so far in this hour currentHourStart=2026-01-29T22:00:00.000Z (repository=indexity-io/renovate-reproduction-40340)
DEBUG: 6 PRs have been created so far in this hour. (repository=indexity-io/renovate-reproduction-40340)
DEBUG: HourlyPRs count = 6 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: syncBranchState() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: syncBranchState(): Branch cache not found, creating minimal branchState (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: getBranchPr(renovate/pin-dependencies) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: findPr(renovate/pin-dependencies, undefined, open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Found PR #8 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: branchExists=true (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: dependencyDashboardCheck=undefined (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: PR rebase requested=false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Open PR Count: 1, Existing Branch Count: 1, Hourly PR Count: 6 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Checking if PR has been edited (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: branch.isModified(): using git to calculate against baseBranch "main" (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: branch.isModified() = false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Found existing branch PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Checking schedule(schedule=at any time, tz=null, now=2026-01-29T22:34:53.658Z) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: No schedule defined (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: GET https://api.github.com/repos/indexity-io/renovate-reproduction-40340/rules/branches/main = (code=ERR_NON_2XX_3XX_RESPONSE, statusCode=403 retryCount=0, duration=423) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Endpoint: https://api.github.com/repos/indexity-io/renovate-reproduction-40340/rules/branches/main, needs paid GitHub plan (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Branch protection: Do not have permissions to detect rulesets for main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: GET https://api.github.com/repos/indexity-io/renovate-reproduction-40340/branches/main/protection = (code=ERR_NON_2XX_3XX_RESPONSE, statusCode=403 retryCount=0, duration=345) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Endpoint: https://api.github.com/repos/indexity-io/renovate-reproduction-40340/branches/main/protection, needs paid GitHub plan (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Converting rebaseWhen=auto to rebaseWhen=conflicted because no rule for behind-base-branch applies (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Branch already exists (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Skipping behind base branch check due to rebaseWhen=conflicted (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: isBranchConflicted(main, renovate/pin-dependencies) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: branch.isConflicted(): using git to calculate against baseBranch main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Setting git author name: Renovate Bot (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Setting git author email: renovate@whitesourcesoftware.com (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: branch.isConflicted(): false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Branch does not need rebasing (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Using reuseExistingBranch: true (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Setting current branch to main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: latest commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
       "branchName": "main",
       "latestCommitDate": "2026-01-30T10:53:00+13:00",
       "sha": "f0f126f99664640635aab57489e03a8231493415"
DEBUG: manager.getUpdatedPackageFiles() reuseExistingBranch=true (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Branch dep docker.io/eclipse-temurin in container/Dockerfile is already updated (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: No content changed (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/pin-dependencies)
       "depName": "docker.io/eclipse-temurin"
DEBUG: Branch dep docker.io/library/eclipse-temurin in container/Dockerfile is already updated (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: No content changed (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/pin-dependencies)
       "depName": "docker.io/library/eclipse-temurin"
DEBUG: Branch dep eclipse-temurin in container/Dockerfile is already updated (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: No content changed (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/pin-dependencies)
       "depName": "eclipse-temurin"
DEBUG: No package files need updating (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: No updated lock files in branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: No changes to package files, skipping post-upgrade tasks (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: No files to commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Setting current branch to main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: latest commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
       "branchName": "main",
       "latestCommitDate": "2026-01-30T10:53:00+13:00",
       "sha": "f0f126f99664640635aab57489e03a8231493415"
DEBUG: Checking if we can automerge branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: mergeStatus=no automerge (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Ensuring PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: There are 0 errors and 0 warnings (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: getBranchPr(renovate/pin-dependencies) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: findPr(renovate/pin-dependencies, undefined, open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Found PR #8 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Found existing PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Processing existing PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: setPrCache() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: Pull Request #8 does not need updating (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: PR is not configured for automerge (repository=indexity-io/renovate-reproduction-40340, branch=renovate/pin-dependencies)
DEBUG: syncBranchState() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: syncBranchState(): Branch cache not found, creating minimal branchState (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: getBranchPr(renovate/eclipse-temurin-21.x) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: findPr(renovate/eclipse-temurin-21.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: branchExists=false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: dependencyDashboardCheck=recreate (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Check for closed PR because recreating closed PRs is disabled. (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: findPr(renovate/eclipse-temurin-21.x, Update eclipse-temurin Docker tag to v21.0.9_10-jdk, !open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Found PR #6 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Found closed PR with current title (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Returning PR from cache (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Open PR Count: 1, Existing Branch Count: 1, Hourly PR Count: 6 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: prHourlyLimit of the upgrades present in this branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "limits": [{"depName": "eclipse-temurin", "prHourlyLimit": 20}]
DEBUG: Calculated lowest prHourlyLimit among the upgrades present in this branch is 20. (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: branchConcurrentLimit of the upgrades present in this branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "limits": [{"depName": "eclipse-temurin", "branchConcurrentLimit": null}]
DEBUG: Calculated lowest branchConcurrentLimit among the upgrades present in this branch is 10. (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Checking schedule(schedule=at any time, tz=null, now=2026-01-29T22:34:55.602Z) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: No schedule defined (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Converting rebaseWhen=auto to rebaseWhen=conflicted because no rule for behind-base-branch applies (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Branch needs creating (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Using reuseExistingBranch: false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Setting current branch to main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: latest commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "branchName": "main",
       "latestCommitDate": "2026-01-30T10:53:00+13:00",
       "sha": "f0f126f99664640635aab57489e03a8231493415"
DEBUG: manager.getUpdatedPackageFiles() reuseExistingBranch=false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Starting search at index 23 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-21.x)
       "depName": "eclipse-temurin"
DEBUG: Found match at index 23 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-21.x)
       "depName": "eclipse-temurin"
DEBUG: Value is not updated (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-21.x)
       "depName": "eclipse-temurin",
       "manager": "dockerfile",
       "expectedValue": "21.0.9_10-jdk",
       "foundValue": "21.0.8_9-jdk"
DEBUG: Found match at index 68 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-21.x)
       "depName": "eclipse-temurin"
DEBUG: Value is not updated (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-21.x)
       "depName": "eclipse-temurin",
       "manager": "dockerfile",
       "expectedValue": "21.0.9_10-jdk",
       "foundValue": "21.0.8_9-jdk"
DEBUG: Found match at index 103 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-21.x)
       "depName": "eclipse-temurin"
DEBUG: Contents updated (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-21.x)
       "depName": "eclipse-temurin"
DEBUG: updateArtifacts for updatedPackageFiles (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Updated 1 package files (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: No updated lock files in branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: 1 file(s) to commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Preparing files for committing to branch renovate/eclipse-temurin-21.x (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: git commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "deletedFiles": [],
       "ignoredFiles": [],
       "result": {
         "author": null,
         "branch": "renovate/eclipse-temurin-21.x",
         "commit": "7e796aa6bd8123ba4f5d8c683c4d2bbb52e3cd8e",
         "root": false,
         "summary": {"changes": 1, "insertions": 1, "deletions": 1}
       }
DEBUG: Pushing refSpec renovate/eclipse-temurin-21.x:renovate/eclipse-temurin-21.x (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: git push (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "result": {
         "pushed": [
           {
             "deleted": false,
             "tag": false,
             "branch": true,
             "new": true,
             "alreadyUpdated": false,
             "local": "refs/heads/renovate/eclipse-temurin-21.x",
             "remote": "refs/heads/renovate/eclipse-temurin-21.x"
           }
         ],
         "ref": {"local": "refs/remotes/origin/renovate/eclipse-temurin-21.x"},
         "remoteMessages": {
           "all": [
             "Create a pull request for 'renovate/eclipse-temurin-21.x' on GitHub by visiting:",
             "https://github.com/indexity-io/renovate-reproduction-40340/pull/new/renovate/eclipse-temurin-21.x"
           ],
           "pullRequestUrl": "https://github.com/indexity-io/renovate-reproduction-40340/pull/new/renovate/eclipse-temurin-21.x"
         }
       }
DEBUG: Setting current branch to main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: latest commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "branchName": "main",
       "latestCommitDate": "2026-01-30T10:53:00+13:00",
       "sha": "f0f126f99664640635aab57489e03a8231493415"
 INFO: Branch created (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "commitSha": "7e796aa6bd8123ba4f5d8c683c4d2bbb52e3cd8e"
DEBUG: Ensuring PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: There are 0 errors and 0 warnings (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: getBranchPr(renovate/eclipse-temurin-21.x) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: findPr(renovate/eclipse-temurin-21.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: findPr(renovate/eclipse-temurin-21.x, undefined, closed) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Found PR #6 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Creating PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "prTitle": "Update eclipse-temurin Docker tag to v21.0.9_10-jdk"
DEBUG: Creating PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "title": "Update eclipse-temurin Docker tag to v21.0.9_10-jdk",
       "head": "indexity-io:renovate/eclipse-temurin-21.x",
       "base": "main",
       "draft": false
DEBUG: PR created (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "pr": 9,
       "draft": false
DEBUG: Adding labels '' to #9 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
 INFO: PR created (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
       "pr": 9,
       "prTitle": "Update eclipse-temurin Docker tag to v21.0.9_10-jdk"
DEBUG: addParticipants(pr=9) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: setPrCache() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: Created Pull Request #9 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: PR is not configured for automerge (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: setBranchCommit() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-21.x)
DEBUG: syncBranchState() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: syncBranchState(): Branch cache not found, creating minimal branchState (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: getBranchPr(renovate/eclipse-temurin-25.x) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: findPr(renovate/eclipse-temurin-25.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: branchExists=false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: dependencyDashboardCheck=recreate (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Check for closed PR because recreating closed PRs is disabled. (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: findPr(renovate/eclipse-temurin-25.x, Update eclipse-temurin Docker tag to v25, !open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Found PR #7 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Found closed PR with current title (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Returning PR from cache (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Open PR Count: 2, Existing Branch Count: 2, Hourly PR Count: 7 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: prHourlyLimit of the upgrades present in this branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "limits": [{"depName": "eclipse-temurin", "prHourlyLimit": 20}]
DEBUG: Calculated lowest prHourlyLimit among the upgrades present in this branch is 20. (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: branchConcurrentLimit of the upgrades present in this branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "limits": [{"depName": "eclipse-temurin", "branchConcurrentLimit": null}]
DEBUG: Calculated lowest branchConcurrentLimit among the upgrades present in this branch is 10. (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Checking schedule(schedule=at any time, tz=null, now=2026-01-29T22:34:58.149Z) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: No schedule defined (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Converting rebaseWhen=auto to rebaseWhen=conflicted because no rule for behind-base-branch applies (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Branch needs creating (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Using reuseExistingBranch: false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Setting current branch to main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: latest commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "branchName": "main",
       "latestCommitDate": "2026-01-30T10:53:00+13:00",
       "sha": "f0f126f99664640635aab57489e03a8231493415"
DEBUG: manager.getUpdatedPackageFiles() reuseExistingBranch=false (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Starting search at index 23 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-25.x)
       "depName": "eclipse-temurin"
DEBUG: Found match at index 23 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-25.x)
       "depName": "eclipse-temurin"
DEBUG: Value is not updated (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-25.x)
       "depName": "eclipse-temurin",
       "manager": "dockerfile",
       "expectedValue": "25.0.1_8-jdk",
       "foundValue": "21.0.8_9-jdk"
DEBUG: Found match at index 68 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-25.x)
       "depName": "eclipse-temurin"
DEBUG: Value is not updated (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-25.x)
       "depName": "eclipse-temurin",
       "manager": "dockerfile",
       "expectedValue": "25.0.1_8-jdk",
       "foundValue": "21.0.8_9-jdk"
DEBUG: Found match at index 103 (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-25.x)
       "depName": "eclipse-temurin"
DEBUG: Contents updated (repository=indexity-io/renovate-reproduction-40340, packageFile=container/Dockerfile, branch=renovate/eclipse-temurin-25.x)
       "depName": "eclipse-temurin"
DEBUG: updateArtifacts for updatedPackageFiles (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Updated 1 package files (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: No updated lock files in branch (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: 1 file(s) to commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Preparing files for committing to branch renovate/eclipse-temurin-25.x (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: git commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "deletedFiles": [],
       "ignoredFiles": [],
       "result": {
         "author": null,
         "branch": "renovate/eclipse-temurin-25.x",
         "commit": "cb82a9c6c1e84c45fdfc3624961c5644b1ba8304",
         "root": false,
         "summary": {"changes": 1, "insertions": 1, "deletions": 0}
       }
DEBUG: Pushing refSpec renovate/eclipse-temurin-25.x:renovate/eclipse-temurin-25.x (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: git push (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "result": {
         "pushed": [
           {
             "deleted": false,
             "tag": false,
             "branch": true,
             "new": true,
             "alreadyUpdated": false,
             "local": "refs/heads/renovate/eclipse-temurin-25.x",
             "remote": "refs/heads/renovate/eclipse-temurin-25.x"
           }
         ],
         "ref": {"local": "refs/remotes/origin/renovate/eclipse-temurin-25.x"},
         "remoteMessages": {
           "all": [
             "Create a pull request for 'renovate/eclipse-temurin-25.x' on GitHub by visiting:",
             "https://github.com/indexity-io/renovate-reproduction-40340/pull/new/renovate/eclipse-temurin-25.x"
           ],
           "pullRequestUrl": "https://github.com/indexity-io/renovate-reproduction-40340/pull/new/renovate/eclipse-temurin-25.x"
         }
       }
DEBUG: Setting current branch to main (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: latest commit (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "branchName": "main",
       "latestCommitDate": "2026-01-30T10:53:00+13:00",
       "sha": "f0f126f99664640635aab57489e03a8231493415"
 INFO: Branch created (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "commitSha": "cb82a9c6c1e84c45fdfc3624961c5644b1ba8304"
DEBUG: Ensuring PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: There are 0 errors and 0 warnings (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: getBranchPr(renovate/eclipse-temurin-25.x) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: findPr(renovate/eclipse-temurin-25.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: findPr(renovate/eclipse-temurin-25.x, undefined, closed) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Found PR #7 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Creating PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "prTitle": "Update eclipse-temurin Docker tag to v25"
DEBUG: Creating PR (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "title": "Update eclipse-temurin Docker tag to v25",
       "head": "indexity-io:renovate/eclipse-temurin-25.x",
       "base": "main",
       "draft": false
DEBUG: PR created (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "pr": 10,
       "draft": false
DEBUG: Adding labels '' to #10 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
 INFO: PR created (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
       "pr": 10,
       "prTitle": "Update eclipse-temurin Docker tag to v25"
DEBUG: addParticipants(pr=10) (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: setPrCache() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: Created Pull Request #10 (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: PR is not configured for automerge (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: setBranchCommit() (repository=indexity-io/renovate-reproduction-40340, branch=renovate/eclipse-temurin-25.x)
DEBUG: getBranchPr(renovate/pin-dependencies) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/pin-dependencies, undefined, open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found PR #8 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: getBranchPr(renovate/eclipse-temurin-21.x) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/eclipse-temurin-21.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found PR #9 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: getBranchPr(renovate/eclipse-temurin-25.x) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/eclipse-temurin-25.x, undefined, open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Found PR #10 (repository=indexity-io/renovate-reproduction-40340)
DEBUG: http cache: saving https://api.github.com/repos/indexity-io/renovate-reproduction-40340/contents/renovate.json (etag="72d18e8915c63e7b584733081f1c9369afce9ff6", lastModified=Thu, 29 Jan 2026 22:32:55 GMT) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Config does not need migration (repository=indexity-io/renovate-reproduction-40340)
DEBUG: ensureDependencyDashboard() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Ensuring Dependency Dashboard (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Checking packageFiles for deprecated or replacement packages (repository=indexity-io/renovate-reproduction-40340)
DEBUG: http cache: Using cached response: https://api.github.com/repos/indexity-io/renovate-reproduction-40340/issues/3 from 2026-01-29T22:34:45.643Z (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issues cache: Updating issue 3 in cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: http cache: Using cached response: https://api.github.com/repos/indexity-io/renovate-reproduction-40340/issues/3 from 2026-01-29T22:35:01.388Z (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issues cache: Updating issue 3 in cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: ensureIssue(Dependency Dashboard) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: http cache: Using cached response: https://api.github.com/repos/indexity-io/renovate-reproduction-40340/issues/3 from 2026-01-29T22:35:01.780Z (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issues cache: Updating issue 3 in cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Patching issue (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issues cache: Updating issue 3 in cache (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Issue updated (repository=indexity-io/renovate-reproduction-40340)
DEBUG: checkReconfigureBranch() (repository=indexity-io/renovate-reproduction-40340)
DEBUG: No reconfigure branch found (repository=indexity-io/renovate-reproduction-40340)
       "reconfigureBranch": "renovate/reconfigure"
DEBUG: Removing any stale branches (repository=indexity-io/renovate-reproduction-40340)
DEBUG: config.repoIsOnboarded=true (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Branch lists (repository=indexity-io/renovate-reproduction-40340)
       "branchList": [
         "renovate/eclipse-temurin-21.x",
         "renovate/eclipse-temurin-25.x",
         "renovate/pin-dependencies"
       ],
       "renovateBranches": [
         "renovate/configure",
         "renovate/eclipse-temurin-21.x",
         "renovate/eclipse-temurin-25.x",
         "renovate/pin-dependencies"
       ]
DEBUG: remainingBranches=renovate/configure (repository=indexity-io/renovate-reproduction-40340)
DEBUG: findPr(renovate/configure, undefined, open) (repository=indexity-io/renovate-reproduction-40340)
DEBUG: branch.isModified(): using git to calculate against baseBranch "main" (repository=indexity-io/renovate-reproduction-40340)
DEBUG: branch.isModified() = true (repository=indexity-io/renovate-reproduction-40340, baseBranch=main)
       "branchName": "renovate/configure",
       "unrecognizedAuthors": ["tim.whittington@indexity.io"]
DEBUG: setCachedModifiedResult(): Branch cache not present (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Orphan Branch is modified - skipping branch deletion (repository=indexity-io/renovate-reproduction-40340, branch=renovate/configure)
DEBUG: PackageFiles.clear() - Package files deleted (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Branch summary (repository=indexity-io/renovate-reproduction-40340)
       "cacheModified": undefined,
       "baseBranches": [{"branchName": "main", "sha": "f0f126f99664640635aab57489e03a8231493415"}],
       "branches": [
         {
           "automerge": false,
           "baseBranch": "main",
           "baseBranchSha": "f0f126f99664640635aab57489e03a8231493415",
           "branchName": "renovate/pin-dependencies",
           "branchSha": "4f5ba3162f6388a781ac107d248c1d6696806067",
           "isModified": false,
           "isPristine": false
         },
         {
           "automerge": false,
           "baseBranch": "main",
           "baseBranchSha": "f0f126f99664640635aab57489e03a8231493415",
           "branchName": "renovate/eclipse-temurin-21.x",
           "branchSha": "7e796aa6bd8123ba4f5d8c683c4d2bbb52e3cd8e",
           "isModified": false,
           "isPristine": true
         },
         {
           "automerge": false,
           "baseBranch": "main",
           "baseBranchSha": "f0f126f99664640635aab57489e03a8231493415",
           "branchName": "renovate/eclipse-temurin-25.x",
           "branchSha": "cb82a9c6c1e84c45fdfc3624961c5644b1ba8304",
           "isModified": false,
           "isPristine": true
         }
       ],
       "defaultBranch": "main",
       "inactiveBranches": []
DEBUG: branches info extended (repository=indexity-io/renovate-reproduction-40340)
       "branchesInformation": [
         {
           "branchName": "renovate/pin-dependencies",
           "prNo": 8,
           "prTitle": "Pin dependencies",
           "result": "done",
           "upgrades": [
             {
               "datasource": "docker",
               "depName": "docker.io/eclipse-temurin",
               "displayPending": "",
               "fixedVersion": "21.0.8_9-jdk",
               "currentVersion": "21.0.8_9",
               "currentValue": "21.0.8_9-jdk",
               "newValue": "21.0.8_9-jdk",
               "newDigest": "sha256:7d1d666ddafac14da0ded6b4b076becf76cf88b31f9d7953a76555cc82f86511",
               "packageFile": "container/Dockerfile",
               "updateType": "pinDigest",
               "packageName": "docker.io/eclipse-temurin"
             },
             {
               "datasource": "docker",
               "depName": "docker.io/library/eclipse-temurin",
               "displayPending": "",
               "fixedVersion": "21.0.8_9-jdk",
               "currentVersion": "21.0.8_9",
               "currentValue": "21.0.8_9-jdk",
               "newValue": "21.0.8_9-jdk",
               "newDigest": "sha256:7d1d666ddafac14da0ded6b4b076becf76cf88b31f9d7953a76555cc82f86511",
               "packageFile": "container/Dockerfile",
               "updateType": "pinDigest",
               "packageName": "docker.io/library/eclipse-temurin"
             },
             {
               "datasource": "docker",
               "depName": "eclipse-temurin",
               "displayPending": "",
               "fixedVersion": "21.0.8_9-jdk",
               "currentVersion": "21.0.8_9-jdk",
               "currentValue": "21.0.8_9-jdk",
               "newValue": "21.0.8_9-jdk",
               "newDigest": "sha256:7d1d666ddafac14da0ded6b4b076becf76cf88b31f9d7953a76555cc82f86511",
               "packageFile": "container/Dockerfile",
               "updateType": "pinDigest",
               "packageName": "eclipse-temurin"
             }
           ]
         },
         {
           "branchName": "renovate/eclipse-temurin-21.x",
           "prNo": 9,
           "prTitle": "Update eclipse-temurin Docker tag to v21.0.9_10-jdk",
           "result": "pr-created",
           "upgrades": [
             {
               "datasource": "docker",
               "depName": "eclipse-temurin",
               "displayPending": "",
               "fixedVersion": "21.0.8_9-jdk",
               "currentVersion": "21.0.8_9-jdk",
               "currentValue": "21.0.8_9-jdk",
               "newValue": "21.0.9_10-jdk",
               "newVersion": "21.0.9_10-jdk",
               "newDigest": "sha256:e8d57b6c5c73d93212a4384f588309b44bc75fd15b38f78e6a6db1b350dc4ef3",
               "packageFile": "container/Dockerfile",
               "updateType": "patch",
               "packageName": "eclipse-temurin"
             }
           ]
         },
         {
           "branchName": "renovate/eclipse-temurin-25.x",
           "prNo": 10,
           "prTitle": "Update eclipse-temurin Docker tag to v25",
           "result": "pr-created",
           "upgrades": [
             {
               "datasource": "docker",
               "depName": "eclipse-temurin",
               "displayPending": "",
               "fixedVersion": "21.0.8_9-jdk",
               "currentVersion": "21.0.8_9-jdk",
               "currentValue": "21.0.8_9-jdk",
               "newValue": "25.0.1_8-jdk",
               "newVersion": "25.0.1_8-jdk",
               "newDigest": "sha256:42fc3fe6804ec612f5ef8a613f8c06d8dd578de6207336077387d4cb32edaa9b",
               "packageFile": "container/Dockerfile",
               "updateType": "major",
               "packageName": "eclipse-temurin"
             }
           ]
         }
       ]
DEBUG: Renovate repository PR statistics (repository=indexity-io/renovate-reproduction-40340)
       "stats": {"total": 8, "open": 3, "closed": 5, "merged": 0}
DEBUG: Repository result: done, status: onboarded, enabled: true, onboarded: true (repository=indexity-io/renovate-reproduction-40340)
DEBUG: Repository timing splits (milliseconds) (repository=indexity-io/renovate-reproduction-40340)
       "splits": {"init": 5475, "onboarding": 0, "extract": 588, "lookup": 7875, "update": 6997},
       "total": 23434
DEBUG: Package cache statistics (repository=indexity-io/renovate-reproduction-40340)
       "get": {"count": 4, "avgMs": 1, "medianMs": 1, "maxMs": 1, "totalMs": 2},
       "set": {"count": 4, "avgMs": 11, "medianMs": 11, "maxMs": 22, "totalMs": 45}
DEBUG: Datasource cache statistics (repository=indexity-io/renovate-reproduction-40340)
       "docker": {"https://index.docker.io": {"hit": 0, "miss": 0, "set": 0, "skip": 3}}
DEBUG: HTTP statistics (repository=indexity-io/renovate-reproduction-40340)
       "hosts": {
         "api.github.com": {
           "count": 14,
           "reqAvgMs": 562,
           "reqMedianMs": 453,
           "reqMaxMs": 1158,
           "queueAvgMs": 0,
           "queueMedianMs": 0,
           "queueMaxMs": 0
         },
         "hub.docker.com": {
           "count": 20,
           "reqAvgMs": 355,
           "reqMedianMs": 324,
           "reqMaxMs": 533,
           "queueAvgMs": 0,
           "queueMedianMs": 0,
           "queueMaxMs": 1
         }
       },
       "requests": 34
DEBUG: HTTP cache statistics (repository=indexity-io/renovate-reproduction-40340)
       "https://api.github.com": {
         "/repos/indexity-io/renovate-reproduction-40340/contents/renovate.json": {
           "hit": 0,
           "miss": 1
         },
         "/repos/indexity-io/renovate-reproduction-40340/dependabot/alerts": {
           "hit": 0,
           "miss": 1
         },
         "/repos/indexity-io/renovate-reproduction-40340/issues/3": {
           "hit": 3,
           "miss": 1
         },
         "/repos/indexity-io/renovate-reproduction-40340/pulls": {"hit": 0, "miss": 1}
       }
DEBUG: Lookup statistics (repository=indexity-io/renovate-reproduction-40340)
       "docker": {"count": 3, "avgMs": 7768, "medianMs": 7755, "maxMs": 7795, "totalMs": 23304}
DEBUG: Cache fallback URLs (repository=indexity-io/renovate-reproduction-40340)
       "count": 0,
       "hits": {}
DEBUG: Git operations statistics (repository=indexity-io/renovate-reproduction-40340)
 INFO: Repository finished (repository=indexity-io/renovate-reproduction-40340)
       "cloned": true,
       "durationMs": 23434,
       "result": "done",
       "status": "onboarded",
       "enabled": true,
       "onboarded": true
DEBUG: Checking file package cache for expired items
DEBUG: Deleted 0 of 4 file cached entries in 6ms

~/projects/github/indexity-io/renovate-reproduction-40340 main 25s
```

</details>
