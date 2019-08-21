/index/01
-->产品类型列表、手机品牌列表、全部手机列表


存session时查询存-->
order实体类-->

从price.jsp发送post表单传递order对象到新路由
--》存储order到购物车
--》返回price.jsp,将原页面数据返回并 查询所有购物车中数据进行遍历

添加购物车--》存进购物车表


最终价格，当前型号id，用户id，标签字符串
----》price


下单
---->/price/01的按钮
----！>传递参数：order.id sessionUser.id  key(判断是否全部结算)
====》/order/buy
---=》为全部结算
    ----》[查找所有的当前用户的未支付订单 包装对象]
---=》为直接下单
    ----》先装进order表
    ----》[将当前一条订单装进列表 包装对象]
---=！》返回参数：[order 包装]
---->cart.html
----!>传递参数 ：[order]
---->success.html
----!>转到我的订单列表
=====》查询所有已提交的订单
=====》order.html

///----------------------------------
订单列表
----》success.jsp 订单号，支付宝号   *
----》order.html     *
---->参数：从uid查询出来的order列表 打包后
    -》orderId,uid,modelId=>model,lastPrice,haveTips=>[tips],incar
    -》改页面中的用户名显示
    -》根据inCar判断

----》分页 & 查询 --> SearchParam
       |
    a href="ershoushouji/2.html">下一页</a>
改页面跳转超链接



cart.jsp  input name
联系人  callman
手机号码 callnum
省 province
城市 city
区县  district
详细地址 aaddrr
姓名  realname
支付宝账号 paynum
是否从购物车中来 前端列表长度 isAll
FirstmodId 第一条的modelId
Sessionuid
////--------------------
index/01
--> index/goods?proId=1  主页
-->/Ass/ess?modId=1  选择
---》/data/datahandle 价格
---》/order/01 添加完购物车

//-------
1.重复用户名注册
2.正确注册
3.退出登录
4.登录
5.分页点击
6.查询
7.点击侧边栏
8.点击品牌
9.去评估
10.添加购物车
11.添加多条
12.删除一条
13.全部结算
14.订单详情
15.提交回购单
16.进入个人中心
17.返回主页
18.去评估
19.重新评估
20.立即下单
21.提交
22.进入个人中心
23.返回主页














