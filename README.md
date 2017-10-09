# configuration

## 踏み台サーバー
  1. gitの設定をする
  ```
  git clone git@github.com:huit2017/configuration.git
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
  git config --global color.ui true
  ```

  1. 公開鍵をコピーする
  ```
  ssh-copy-id [HOST]
  ```

## Jenkins
  1. Jenkins > 設定
    - Jenkinsの位置
      - システム管理者のメールアドレス: Jenkis Admin <jenkins_admin@xxx.xx.xx>
  1. jenkins > プラグインマネージャー
    - Git plugin
    - Pipeline
    - Locale plugin
    - Cobertura Plugin
    - Checkstyle Plug-in
    - SSH Slaves plugin
    - FindBugs Plug-in
    - GitHub Pull Request Builder
    - Docker Plugin 
