
Pod::Spec.new do |s|
  s.name         = "TQEasyIconButton"
  s.version      = "0.0.1"
  s.summary      = "TQEasyIconButton is a UIButton Category. Easy way to set titleEdgeInsets,imageEdgeInsets make icon in left,right,top,bottom."
  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://github.com/TinyQ/TQEasyIconButton"
  s.license      = "MIT"
  s.author       = { "qfu" => "tinyqf@gmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/TinyQ/TQEasyIconButton.git", :tag => "0.0.1" }
  s.source_files = "UIButton+TQEasyIcon/*.{h,m}"
  s.requires_arc = true
end
