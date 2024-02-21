@Entry
@Component
export default  struct Goals {
  @State message: string = '行程页面'

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
    .backgroundColor(Color.Yellow)

  }
}