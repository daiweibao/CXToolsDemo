//自定义tababr
import {CXTabbar} from './CXTabbar/CXTabbar'
import router from '@ohos.router' //路由

import home from './Home' //首页
import goals from './Goals' //行程
import reccuring from './Reccuring' //发现
import Mine from './Mine' //我的


@Entry
@Component
struct Index {
  //tabar控制器，手动切换角标用
  private tabsController : TabsController = new TabsController()
  //当前选中的角标,默认为0
  @State currentIndex:number = 0;

  build() {
    Column(){
      //让自定义tabbar覆盖在系统tabbar上
      Stack({ alignContent: Alignment.Bottom }) {
        //系统tabbar，用来控制页面切换
        Tabs({ barPosition: BarPosition.End, controller: this.tabsController}) {
          TabContent() {
            //首页
            home()
          }
          TabContent() {
            //行程
            goals()
          }
          TabContent() {
            //发现
            reccuring()
          }
          TabContent() {
            //我的
            Mine()
          }
        }
        .vertical(false)//是否垂直
        .backgroundColor('#F1F3F5')//背景色
        .barHeight(0)//tabbar高度设置为0，方便自定义tabbar覆盖。主页控制器也能穿透tabbar
        .onChange((index) => {
          //需要监听索引index的变化，实现左右滑动、点击切换tabbar的图标文字
          this.currentIndex = index
          console.log('tabbar改变:',index);
        })

        //自定义tabbar，直接覆盖在系统tabbar上面
        CXTabbar({currentIndex:$currentIndex,
          tabItemClick:()=>{
            //点击tabbar
            this.tabsController.changeIndex(this.currentIndex)
            console.log('点击选中tabbar:',this.currentIndex);
          },
          tabItemTuchuClick:()=>{
            //点击凸出的tabbar
            console.log('点击了中间凸出的tabbar');
            router.pushUrl({
              url:'pages/TuChuPage'
            }),
            router.RouterMode.Standard//页面跳转模型，RouterMode枚举
          }
        })
      }
    }
    .backgroundColor('#F0F0F0')//灰色
    .height('100%')//容器高度
    .justifyContent(FlexAlign.End)
  }
}
