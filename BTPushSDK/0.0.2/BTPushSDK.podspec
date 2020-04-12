Pod::Spec.new do |spec|
  spec.name         = "BTPushSDK"

  # 更改spec的时候，变更版本号
  spec.version      = "0.0.2"

  spec.summary      = "This is BTPushSDK"
  spec.description  = <<-DESC
              Yes! I am BTPushSDK.Hello world!
               DESC
  spec.homepage     = "https://www.baidu.com"
  spec.license      = "MIT"
  spec.author       = { "598416667@qq.com" => "github" }
  spec.platform     = :ios,"8.0"

  # 注意tag的填写，一般与版本号保持一致，也可以用commit号。 git地址是对应的远程代码仓库的地址
  # git地址只支持HTTP和HTTPS地址，不支持SSH地址
  spec.source       = { :git => "https://github.com/luckyzhu/customPushSDK.git", :tag => "#{spec.version}" }

  # 可以用file patterns的方式指定源文件
  #spec.source_files = "BTPushSDK/MiPushSDK/*.{h,m}"


  spec.default_subspecs = 'Base'
  # subspec配置
  spec.subspec 'Base' do |base|
  base.source_files = "BTPushSDK/Base/*.{h,m}"
  end

  spec.subspec 'MipushSDK' do |mipush|
  mipush.source_files = "BTPushSDK/MiPushSDK/*"
  #mipush.vendored_libraries = "BTPushSDK/MiPushSDK/libMiPushSDK.a"
  mipush.dependency "BTPushSDK/Base"
  end
end
