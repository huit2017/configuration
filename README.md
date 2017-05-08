# configuration

## チケット管理ツール(Redmine)、CI(Jenkins)サーバーの構成管理

事前にgitの秘密鍵を.ssh/id_rsaに設定しておく
```
sudo yum -y install git
git clone git@github.com:huit2017/configuration.git
cd configuration/
sh init.sh
cd ansible
ansible-playbook -i other site.yml
```
