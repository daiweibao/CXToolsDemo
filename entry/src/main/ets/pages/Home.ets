@Entry
@Component
export default struct Home {//导出首页组件
  @State message: string = '首页页面'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
    .backgroundColor('#F0F0F0')
  }
}