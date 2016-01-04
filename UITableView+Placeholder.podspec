Pod::Spec.new do |s|
  s.name         = "UITableView+Placeholder"
  s.version      = "0.0.3"
  s.summary      = "UITableView为空时，显示一个提示"
  s.homepage     = "https://github.com/wzf/UITableView-Placeholder"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "wangzhanfeng" => "fengpromail@163.com" }
  s.source       = { :git => "https://github.com/wzf/UITableView-Placeholder.git", :tag =>"0.0.3"}
  s.frameworks   = 'Foundation', 'UIKit'
  s.platform     = :ios, '7.0'
  s.source_files = 'Classes/**/*.{h,m}'
  s.requires_arc = true
end