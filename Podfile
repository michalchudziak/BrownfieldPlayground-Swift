require_relative './node_modules/react-native/scripts/react_native_pods'
require_relative './node_modules/@react-native-community/cli-platform-ios/native_modules'

platform :ios, '12.4'
install! 'cocoapods', :deterministic_uuids => false

target 'BrownfieldPlayground-Swift' do
  config = use_native_modules!
  flags = get_default_flags()

  use_react_native!(
    :path => config[:reactNativePath],
    :hermes_enabled => flags[:hermes_enabled],
    :fabric_enabled => flags[:fabric_enabled],
    :flipper_configuration => FlipperConfiguration.enabled,
    :app_path => "#{Pod::Config.instance.installation_root}"
  )

  post_install do |installer|
    react_native_post_install(
      installer,
      :mac_catalyst_enabled => false
    )
    __apply_Xcode_12_5_M1_post_install_workaround(installer)
  end

end
