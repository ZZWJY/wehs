const myevent={
addEvent : function(element, type, callback) {
    if (element.addEventListener) {
        //事件类型、需要执行的函数、是否捕捉
        element.addEventListener(type, callback, false);
    } else if (element.attachEvent) {
        element.attachEvent('on' + type, function() {
            callback.call(element);
        });
    } else {
        element['on' + type] = callback;
    }
}
}
export default{
    install: function(Vue, Option){
        Vue.prototype.myevent=myevent;
      }
    }