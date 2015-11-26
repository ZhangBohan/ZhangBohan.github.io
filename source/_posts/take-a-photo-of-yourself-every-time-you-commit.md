title: 提交代码时来张自拍
date: 2015-11-26 22:56:36
tags:
- Git
- 翻译
---
首先安装**imagesnap**，[https://github.com/alexwilliamsca/imagesnap](https://github.com/alexwilliamsca/imagesnap)或者Mac系统下通过homebrew安装：

```shell
brew install imagesnap
```

新建`~/.gitshots`目录：

```
mkdir ~/.gitshots
```

添加下面的文件`post-commit`到你的git插件中：
```
#!/usr/bin/env ruby
file="~/.gitshots/#{Time.now.to_i}.jpg"
unless File.directory?(File.expand_path("../../rebase-merge", __FILE__))
  puts "Taking capture into #{file}!"
  system "imagesnap -q -w 3 #{file} &"
end
exit 0
```

你还可以把这些图片合成为视频：[http://www.dayofthenewdan.com/projects/tlassemble](http://www.dayofthenewdan.com/projects/tlassemble)

[我录的视频样例](/static/test.mov)

原文链接：[Take a photo of yourself every time you commit](https://coderwall.com/p/xlatfq/take-a-photo-of-yourself-every-time-you-commit?p=1&q=)
