const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"员工","menuJump":"列表","tableName":"yuangong"}],"menu":"员工管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"药品类别","menuJump":"列表","tableName":"yaopinleibie"}],"menu":"药品类别管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论","导出"],"menu":"药品信息","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息管理"},{"child":[{"buttons":["查看","修改","删除","导出"],"menu":"药品入库","menuJump":"列表","tableName":"yaopinruku"}],"menu":"药品入库管理"},{"child":[{"buttons":["查看","修改","删除","导出"],"menu":"药品出库","menuJump":"列表","tableName":"yaopinchuku"}],"menu":"药品出库管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医药指南","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"},{"child":[{"buttons":["查看","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"buttons":["查看","删除","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["查看","删除"],"menu":"已退款订单","tableName":"orders/已退款"},{"buttons":["查看","删除"],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["查看","删除"],"menu":"已发货订单","tableName":"orders/已发货"},{"buttons":["查看","删除"],"menu":"未支付订单","tableName":"orders/未支付"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["查看"],"menu":"已取消订单","tableName":"orders/已取消"},{"buttons":["查看"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["查看"],"menu":"已退款订单","tableName":"orders/已退款"},{"buttons":["查看"],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["查看","确认收货"],"menu":"已发货订单","tableName":"orders/已发货"},{"buttons":["查看"],"menu":"未支付订单","tableName":"orders/未支付"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["查看","入库","出库"],"menu":"药品信息","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"药品入库","menuJump":"列表","tableName":"yaopinruku"}],"menu":"药品入库管理"},{"child":[{"buttons":["删除","修改","查看"],"menu":"药品出库","menuJump":"列表","tableName":"yaopinchuku"}],"menu":"药品出库管理"},{"child":[{"buttons":["查看","审核"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"员工","tableName":"yuangong"}]
    }
}
export default menu;
