import web_webview from '@ohos.web.webview';
@Entry
@Component
struct View {
  @State message: string = 'Hello World'
  controller: web_webview.WebviewController = new web_webview.WebviewController();
  build() {
    Row() {
      Column() {
        Web({ src:'http://democenter.fit2cloud.com:40779/link/Bh8CqDXp', controller: this.controller })
      }
      .width('100%')
    }
    .height('100%')
  }
}