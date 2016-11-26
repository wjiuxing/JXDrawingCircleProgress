Pod::Spec.new do |s|
  s.name         = "JXDrawingCircleProgress"
  s.version      = "1.0"
  s.summary      = "JXDrawingCircleProgress is an open-source 'UIButton' subclass built to make a circle styled count down animation with button."
  s.description  = <<-DESC
JXDrawingCircleProgress is an open-source 'UIButton' subclass built to make a circle styled count down animation with button. The most use case is to add a skip button to the Ad shows.
                   DESC
  s.homepage     = "https://github.com/wjiuxing/JXDrawingCircleProgress"
  s.license      = "MIT"
  s.author       = { "Amos King" => "wangjiuxing2010@hotmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/wjiuxing/JXDrawingCircleProgress.git", :tag => "v#{s.version}" }
  s.source_files  = "JXDrawingCircleProgress"
  s.framework  = "UIKit"
  s.requires_arc = true
end
