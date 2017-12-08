# PostgreSQLを起動するVagrant

## Summary
- GuestOSにインストールしたDockerコンテナでPostgreSQLをデプロイする
- GuestOSのセットアップはAnsible-playbookから行う

## GuestOSにSetUpするもの
- CentOS
- ansible
- pip
- Docker-ce
- Docker-py
- PostgreSQL

ansibleはVagrantでインストールし、その他はansible-playbookでインストールする

## 前提
- HostOSにVirtualBoxとVagrantをインストールする
- ansible-playbookはHostOSで管理し、GuestOSから共有参照して実行する

### DBへの接続方法
`psql -h (VagrantのIP) -U (DBUSERNAME) -d (DBNAME)`
