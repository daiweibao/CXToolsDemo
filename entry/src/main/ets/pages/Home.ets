import router from '@ohos.router'
@Entry
@Component
export default struct Home {//导出首页组件
  @State message: string = '首页页面'

  build() {
    Column() {
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Button('功能入口').onClick((event: ClickEvent) => {
        //功能入口
        router.pushUrl({url:'pages/CXToolsListPage'})
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F0F0F0')
    .justifyContent(FlexAlign.Center)
  }
}