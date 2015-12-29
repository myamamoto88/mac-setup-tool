# mac-setup-tool

少ない手数で環境構築

# 使い方

* githubに公開鍵を登録する
```
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub | pbcopy
```
* install.sh を実行する
```
curl -fsSL https://raw.githubusercontent.com/myamamoto88/mac-setup-tool/master/install.sh | bash -x
```

## 参考
* https://github.com/twada/macbook-provisioning
* https://github.com/skuroki/dotfiles2
