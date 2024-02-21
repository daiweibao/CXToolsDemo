
@Component
export struct CXTabbarItem{
  //默认图标
  defaultImage:Resource
  //选中图标
  selectImage:Resource
  //标题
  title:string
  //是否选中
  @Prop isSelected:boolean
  build(){
    Column(){
      //根据isSelected字段设置图标，如果isSelected为true设置选中图标，否则为默认图标
      Image(this.isSelected ? this.selectImage : this.defaultImage)
        .size({width: 22, height: 22})

      //标题
      Text(this.title)
        .fontSize(12)
        .margin({top:6})
        .fontColor(this.isSelected ? '#3C8DFF' : '#B7B7B7')
    }
    .height('100%')
    .width(50)//每一个item的宽度
    .justifyContent(FlexAlign.Center)
  }
}