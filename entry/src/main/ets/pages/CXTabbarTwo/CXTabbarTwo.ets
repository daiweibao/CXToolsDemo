import {CXTabbarItemTwo} from './CXTabbarItemTwo'

@Component
export  struct CXTabbarTwo {
  //点击tabbar按钮事件回调
  tabItemClick:()=>void
  //点击凸出按钮事件回调
  tabItemTuchuClick:()=>void
  //选中角标
  @Link currentIndex:number

  build() {
    Row(){
      //首页
      CXTabbarItemTwo({defaultImage:$r('app.media.tb00'),selectImage:$r('app.media.tb01'),title:'首页',isSelected:this.currentIndex === 0})
        .onClick(()=>{
          this.currentIndex = 0
          this.tabItemClick();
        })
      //行程
      CXTabbarItemTwo({defaultImage:$r('app.media.tb10'),selectImage:$r('app.media.tb11'),title:'行程',isSelected:this.currentIndex === 1})
        .onClick(()=>{
          this.currentIndex = 1
          this.tabItemClick();
        })

      //中间凸出按钮
      Image($r('app.media.tab_add'))
        .width(45)
        .height(45)
        .offset({y:-25})//往上偏移25
        .onClick(()=>{
          //凸出按钮点击事件
          this.tabItemTuchuClick();
        })

      //发现
      CXTabbarItemTwo({defaultImage:$r('app.media.tb20'),selectImage:$r('app.media.tb21'),title:'发现',isSelected:this.currentIndex === 2})
        .onClick(()=>{
          this.currentIndex = 2
          this.tabItemClick();
        })
      //我的
      CXTabbarItemTwo({defaultImage:$r('app.media.tb30'),selectImage:$r('app.media.tb31'),title:'我的',isSelected:this.currentIndex === 3})
        .onClick(()=>{
          this.currentIndex = 3
          this.tabItemClick();
        })
    }
    .backgroundColor(Color.White)//背景色，灰色#F1F3F5
    .width('100%')//设置宽度
    .height(50)//tabbar高度
    .justifyContent(FlexAlign.SpaceAround)//设置主轴方向对齐方式
  }
}