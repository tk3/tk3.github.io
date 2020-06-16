---
weight: 33
title: "inkdrop"
---

# [Inkdrop](https://www.inkdrop.app/) とは

Markdown でメモが書けるアプリ。

Plugin があり、カスタマイズが可能。
[Inkdrop - Plugins](https://my.inkdrop.app/plugins)



## Inkdrop のプラグインをインストールする

手順は Windows で実施。 他の環境でも ipm コマンドのパスが通っていればいいはず。  
PowerShell を開き、Inkdrop にパスを通す。あとは、プラグインの名前を指定してインストールするだけ。

```
PS C:\> $Env:Path += ';' + $env:LOCALAPPDATA + '\inkdrop\bin'
PS C:\> ipm
PS C:\> ipm install vim
```

