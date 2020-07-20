# PasswordInput
自定义密码输入框

开发中很多地方都会遇到密码输入，输入框是自定义的 UI 样式，如下图所示：

<p align="center" >
  <img src="https://upload-images.jianshu.io/upload_images/7112462-adfe8c5ea7735d39.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240" alt="PasswordInput" title="PasswordInput">
</p>

要自定义一个密码输入框，其中核心是实现 [`UIKeyInput`](https://developer.apple.com/documentation/uikit/uikeyinput?language=objc) 协议！该协议用来实现简单文本输入，当实现该协议的实例是第一响应时，系统键盘就会显示出来！

```
@protocol UIKeyInput <UITextInputTraits>

///输入的文本长度是否大于 0
@property(nonatomic, readonly) BOOL hasText;

/** 插入一个字符
 * @param text 在系统键盘上键入的字符
 * @Discussion 将字符添添加至与光标对应的索引处，并重新显示文本
 */
- (void)insertText:(NSString *)text;

/** 从显示的文本中删除一个字符，并重新显示文本
 */
- (void)deleteBackward;

@end
```

