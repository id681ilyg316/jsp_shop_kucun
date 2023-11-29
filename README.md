## 本项目实现的最终作用是基于JSP超市库存管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 个人信息管理
 - 供应商管理
 - 商品入库管理
 - 商品出库管理
 - 商品管理
 - 用户管理
 - 管理员登录
 - 系统公告管理
### 第2个角色为超市员工角色，实现了如下功能：
 - 供应商管理
 - 出入库管理
 - 商品增删改查
 - 用户登录注册
 - 系统公告查看
## 数据库设计如下：
# 数据库设计文档

**数据库名：** shop_kucun

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [chuku](#chuku) |  |
| [gys](#gys) |  |
| [ruku](#ruku) |  |
| [shangpin](#shangpin) |  |
| [xtgg](#xtgg) |  |
| [yonghu](#yonghu) |  |

**表名：** <a id="chuku">chuku</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ckid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | sp |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 商品  |
|  3   | jg |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 价格  |
|  4   | sl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 数量  |
|  5   | ms |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 描述  |
|  6   | czr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 操作人  |
|  7   | cksj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 出库时间  |

**表名：** <a id="gys">gys</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | gysid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | gysmc |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 供应商名称  |
|  3   | dz |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  4   | jyfw |   varchar   | 4000 |   0    |    Y     |  N   |   NULL    | 经营范围  |
|  5   | dh |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  6   | fr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 法人  |
|  7   | zcsj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 注册时间  |

**表名：** <a id="ruku">ruku</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | rkid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | sp |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 商品  |
|  3   | sl |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 数量  |
|  4   | ms |   varchar   | 4000 |   0    |    Y     |  N   |   NULL    | 描述  |
|  5   | czr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 操作人  |
|  6   | rksj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 入库时间  |

**表名：** <a id="shangpin">shangpin</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | spid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | spmc |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 商品名称  |
|  3   | jg |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 价格  |
|  4   | gys |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 供应商  |
|  5   | gg |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 规格  |
|  6   | sl |   int   | 10 |   0    |    Y     |  N   |   NULL    | 数量  |
|  7   | lrr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 录入人  |
|  8   | sx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 属性  |
|  9   | xh |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 型号  |
|  10   | zcsj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 注册时间  |

**表名：** <a id="xtgg">xtgg</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | xtggid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | bt |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | ggnr |   varchar   | 4000 |   0    |    Y     |  N   |   NULL    | 公告内容  |
|  4   | fbsj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 发布时间  |

**表名：** <a id="yonghu">yonghu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | yhid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | yhm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | zsxm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 真实姓名  |
|  5   | qx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 权限  |
|  6   | zcsj |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 注册时间  |
|  7   | zw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 职务  |

**运行不出来可以微信 javape 我的公众号：源码码头**
