
#### 回退到上个版本reset(soft为默认参数, HEAD~1表示回退的版本数量, 可换成版本号直接回退到指定版本)
+ 把已经提交的改变放到缓存区:`git reset HEAD~1`或者`git reset --soft HEAD~1` 
+ 扔掉已经提交的change, 直接回退: `git reset --hard HEAD~1`

#### revert
+ 用新的commit来修正之前的某版本的commit, 跨版本号的话会有冲突的问题需要解决 


merge冲突后回退: 先add再commit, 然后reset