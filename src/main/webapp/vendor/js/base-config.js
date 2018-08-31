/**
 * @description common config
 * @author wangyushuai@fang.coom
 */

$.fn.dtconfig =  {
    processing: true,//是否显示加载中提示
    autoWidth: false,//是否自动计算表格各列宽度
    info: true,//是否显示页数信息
    pagingType:"full_numbers",//分页样式
    pageLength :10,//默认表格长度
    searching: false,//是否显示搜索框
    ordering:false,//是否排序
    serverSide: true,//是否从服务器获取数据
    stateSave: false,//页面重载后保持当前页
    lengthChange: true,//表格长度是否可变更
    lengthMenu: [ 10, 15,25, 50, 75, 100 ],//长度菜单
    language: {
        lengthMenu: "每页显示 _MENU_记录",
        zeroRecords: "没有匹配的数据",
        info: "第_PAGE_页/共 _PAGES_页 ( 共\_TOTAL\_条记录 )",
        infoEmpty: "没有符合条件的记录",
        search: "查找",
        infoFiltered: "(从 _MAX_条记录中过滤)",
        paginate: { "first": "首页 ", "last": "末页", "next": "下一页", "previous": "上一页" },
        processing: "正在加载..."
    },
    responsive: true,
    scrollX: true
}