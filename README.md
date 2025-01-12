# QFNUScoreReminder

曲阜师范大学教务系统成绩监控，检测到新有成绩出来之后会上报

![image](./assets/image.png)

### 效果

![效果](https://pica.zhimg.com/80/v2-ab040cb6e2c97cd56de73d09777c4f07.png)

## 使用方法

### fork 项目

[W1ndys/QFNUScoreReminder: 曲阜师范大学教务系统成绩监控，检测到新有成绩出来之后会上报](https://github.com/W1ndys/QFNUScoreReminder)

点击链接进入 Github，fork 本项目到自己的仓库

![image-20250111173147175](https://pica.zhimg.com/80/v2-01a15518704c6c8af91cf05cd843c795.png)

### 新增钉钉机器人

去钉钉新建一个自己的群，去群设置 > 机器人，添加一个自定义 webhook 机器人

记录配置的 `webhook` 和 `secret`（不要泄露），如果你的 webhook 是 `https://oapi.dingtalk.com/robot/send?access_token=xxx` ，那么 `DD_BOT_TOKEN` 就是 `xxx`，`DD_BOT_SECRET` 就是 `secret`，下面要用

![image-20250111173550018](https://pica.zhimg.com/80/v2-99e91c06e71ac28cbed199f9e4321896.png)

### 配置环境变量

进入设置配置环境变量

![image-20250111173249952](https://pica.zhimg.com/80/v2-e24e61d04f7bfdde25ce104f2a016c5d.png)

分别配置 `DD_BOT_SECRET` 和 `DD_BOT_TOKEN` 、`USER_ACCOUNT` 和 `USER_PASSWORD` 环境变量

`DD_BOT_SECRET` 和 `DD_BOT_TOKEN` 是钉钉机器人配置的 `webhook` 和 `secret`

`USER_ACCOUNT` 和 `USER_PASSWORD` 是教务系统账号密码

### 运行

点击 `Run workflow` 按钮，运行项目，如果配置正确，会收到钉钉消息

![image-20250111175039786](https://pica.zhimg.com/80/v2-7c49b45057d28dec0b33b9b7b37bc108.png)

收到钉钉消息，说明配置成功并且初始化成功

到这里已经可以正常运行了，程序会每5分钟检查一次成绩，有新成绩会发送钉钉消息
