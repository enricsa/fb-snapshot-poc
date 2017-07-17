# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'STExampleTests' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!
  
  # Pods for STExample
  pod 'FBSnapshotTestCase'

end

post_install do |installer|

    # Fix "Use Legacy Swift Language Version"
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end

    # Disable code coverage for all Pods and Pods Project
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = 'NO'
        end
    end
    installer.pods_project.build_configurations.each do |config|
        config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = 'NO'
    end
end

                                                                                                                                                                                                                                                                                                 
