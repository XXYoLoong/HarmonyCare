@Entry
@Component
struct MyFamily {
  @State message: string = 'hi'
  @State array: Array<teacherEntity> = [
    new teacherEntity("张三", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("李四", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("张三", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("李四", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("张三", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("李四", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("张三", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("李四", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("王五", "张三", "这个老师非常的", "这个老师非常的"),
    new teacherEntity("赵六", "张三", "这个老师非常的", "这个老师非常的"),
  // 其他条目...
  ];

  build() {
 
  }
}
export class teacherEntity{
  public name1: string;
  public name2: string;
  public msg1: string;
  public msg2: string;

  constructor(name1: string, name2: string, msg1: string, msg2: string) {
  this.name1 = name1;
  this.name2 = name2;
  this.msg1 = msg1;
  this.msg2 = msg2;
  this.name1 = name1;
  this.name2 = name2;
  this.msg1 = msg1;
  this.msg2 = msg2;
}
}