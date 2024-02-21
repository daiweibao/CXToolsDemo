import router from '@ohos.router'
@Component
//用export导出组件
export struct CXNavView {
  //导航栏标题
  private navTitle: ResourceStr

  @State params: Object = router.getParams()

  build(){
    //标题
    Row() {
      Image($r('app.media.public_back'))
        .width(30)
        .onClick(() => {
          //返回上级页面
          router.back()
          // //返回到指定页面并传值
          // router.back({
          //   url: 'pages/Index',
          //   params:{id: '10'}//传递的参数
          // })

        })

      if (this.navTitle){
        Text(this.navTitle)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin({left:10,right:10})
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
      }
      //右边占位
      Text('').width(30)
    }
    .width('100%')
    .height(64)
    .backgroundColor(Color.White)
    .padding({left:15,right:15})
    .justifyContent(FlexAlign.SpaceBetween)
  }
}
