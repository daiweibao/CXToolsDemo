import { CXNavView } from '../CXNav/CXNavComponent'
import {LoadingDialog} from '../Loading/LoadingDialog'

@Entry
@Component
struct LoadingTestPage {

  //初始化弹窗控件对象
  loadingDialogController: CustomDialogController = new CustomDialogController({
    builder: LoadingDialog({ loadingTips: "加载中..."}),
    autoCancel: false,//点击空白处是否可以关闭
    gridCount: 2
  })

  build() {
    Row() {
      Column() {
        //导航栏
        CXNavView({navTitle:'加载中控件'})

        Button('展示加载中')
          .fontColor(Color.White)
          .width(120)
          .height(60)
          .onClick(()=>{
            //展示加载中
            this.loadingDialogController.open()

            //定时器
            setTimeout(()=>{
              //3秒后关闭弹窗
              this.loadingDialogController.close()
            },3000)
          })
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)
    }
    .height('100%')
  }
}