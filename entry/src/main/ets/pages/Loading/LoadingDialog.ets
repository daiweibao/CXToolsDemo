//自定义弹窗组件
@CustomDialog
export struct LoadingDialog {
  //提示的文字
  @Prop loadingTips: string
  @State rotateAngle: number = 0
  //弹窗控制器
  controller: CustomDialogController

  private rotateTimeOut: any //计时器ID

  aboutToAppear() {
    //开始计时器
    this.startRotate()
  }

  aboutToDisappear(){
    //停止计时器
    this.clearAnimation()
  }

  startRotate() {
    this.rotateTimeOut = setInterval(() => {
      this.rotateAngle += 10
    }, 40)
  }

  clearAnimation(){
    this.rotateAngle = 0
    clearInterval(this.rotateTimeOut)
  }

  build() {
    Stack() {
      Column() {
        //图标
        Image($r('app.media.common_loading'))
          .height(50)
          .width(50)
          .rotate({ angle: this.rotateAngle })

        //文字
        Text(this.loadingTips)
          .fontSize(15)
          .margin({ top: 10})

      }
      .justifyContent(FlexAlign.Center)
      .height(150)
      .width(150)
      .backgroundColor('#ffffff')
      .border({ radius:5})
    }
  }
}




