## 本项目实现的最终作用是基于SSH勤工助学管理系统
## 分为4个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 审批管理
 - 岗位管理
 - 工资管理
 - 用户管理
 - 管理员登陆
### 第2个角色为学生角色，实现了如下功能：
 - 个人信息管理
 - 学生登陆
 - 岗位查看申请
 - 查看我的申请
### 第3个角色为学生处角色，实现了如下功能：
 - 勤工助学工资管理
 - 学生处审批管理
 - 学生处管理员登陆
 - 岗位审批
### 第4个角色为用人单位角色，实现了如下功能：
 - 勤工助学工资
 - 发布岗位管理
 - 工资审核管理
 - 用人单位登陆
 - 申请岗位管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_qgzx_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [gangwei](#gangwei) |  |
| [gongzi](#gongzi) |  |
| [guanbi](#guanbi) |  |
| [loginuser](#loginuser) |  |
| [shenq](#shenq) |  |

**表名：** <a id="gangwei">gangwei</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | riqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 日期  |
|  4   | shenpi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | danwei |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | baochou |   decimal   | 11 |   2    |    Y     |  N   |   NULL    |   |

**表名：** <a id="gongzi">gongzi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 900 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | danwei |   varchar   | 1800 |   0    |    Y     |  N   |   NULL    |   |
|  4   | baochou |   decimal   | 11 |   2    |    Y     |  N   |   NULL    |   |
|  5   | uname |   varchar   | 765 |   0    |    Y     |  N   |   NULL    |   |
|  6   | uid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  7   | gid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | pingd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | gongz |   decimal   | 11 |   2    |    Y     |  N   |   NULL    |   |
|  10   | tians |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  11   | sid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  12   | bdate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | edate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="guanbi">guanbi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | friqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | triqi |   varchar   | 60 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="loginuser">loginuser</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | name |   varchar   | 270 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | password |   varchar   | 450 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | phone |   varchar   | 450 |   0    |    Y     |  N   |   NULL    | 手机号码  |
|  5   | user_type |   varchar   | 270 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  6   | rname |   varchar   | 270 |   0    |    Y     |  N   |   NULL    |   |
|  7   | sex |   varchar   | 2295 |   0    |    Y     |  N   |   NULL    | 性别  |
|  8   | xueli |   varchar   | 2295 |   0    |    Y     |  N   |   NULL    |   |
|  9   | renzhi |   varchar   | 2295 |   0    |    Y     |  N   |   NULL    |   |
|  10   | dept |   varchar   | 2295 |   0    |    Y     |  N   |   NULL    |   |
|  11   | zhiwu |   varchar   | 2295 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="shenq">shenq</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | riqi |   varchar   | 60 |   0    |    Y     |  N   |   NULL    | 日期  |
|  4   | shenpi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | danwei |   varchar   | 600 |   0    |    Y     |  N   |   NULL    |   |
|  6   | baochou |   decimal   | 11 |   2    |    Y     |  N   |   NULL    |   |
|  7   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  8   | uid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  9   | gid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  10   | xscsp |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | dwsp |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | shenh |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

