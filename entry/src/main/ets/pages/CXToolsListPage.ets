//功能列表页面
import router from '@ohos.router'
import { CXNavView } from './CXNav/CXNavComponent'

@Entry
@Component
struct CXToolsListPage {
  @State message: string = 'Hello World'

  private dataSouce: Array<string> = [
    'tabbar突出-无背景',
    '标准tababr',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2',
    '功能2']//数组初始化值

  build() {
    Column() {
      //导航栏
      CXNavView({navTitle:'功能列表'})
      //列表
      List({space: 10}){
        ForEach(this.dataSouce, (item, index) => {
          ListItem(){
            //ListItem内部，只能包含一个根组件
            this.createItemUI(item, index)
          }
        })
      }
      .width('100%')
      .layoutWeight(1)
      .listDirection(Axis.Vertical)//列表方向，默认纵向（垂直）
      .scrollBar(BarState.Auto) // 滚动条
      .backgroundColor(Color.White)

    }
    .height('100%')
    .backgroundColor('#F0F0F0')
  }

  //创建item的UI
  @Builder createItemUI(item:string, index:number){
    Row(){
      Column(){
        //标题
        Text(item)
          .height(43)
          .margin({left:15})
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
        //分割线
        Divider().height(0.5).margin({left:15})
      }
      .alignItems(HorizontalAlign.Start)

    }.width('100%')
    .height(44)
    .onClick(()=>{
      //点击cell
      if (index===0) {
        //tabbar突出-无背景
        router.pushUrl({url:'pages/CXTabbarTwo/TabbarTwoTestPage'})
      }else if (index===1){
        //标准tababr
        router.pushUrl({url:'pages/CXTabbarThree/TabbarThreeTestPage'})
      }
    })
  }
}