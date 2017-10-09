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
  1. Jenkins > 設定 # Jenkinsの位置 - システム管理者のメールアドレス: Jenkis Admin <jenkins_admin@xxx.xx.xx>
  1. jenkins > プラグインマネージャー
    1. Git plugin
    1. Pipeline
    1. Locale plugin
    1. Cobertura Plugin
    1. Checkstyle Plug-in
    1. SSH Slaves plugin
    1. FindBugs Plug-in
    1. GitHub Pull Request Builder
    1. Docker Plugin 
