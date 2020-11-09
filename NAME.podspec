Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/vidahealth/via_ios/'
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://github.com/vidahealth/via_ios.git' }

  s.ios.deployment_target = '12.0'

  s.source_files = '${POD_NAME}/${POD_NAME}/Classes/**/*'
  # s.resources = "ContentFramework/Content/Assets/*.xcassets"

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = '${POD_NAME}/${POD_NAME}/Tests/**/*.swift'
  end

  s.dependency 'VidaUIKit'
  s.dependency 'constrain'
  s.dependency 'VidaCore'
  s.dependency 'VidaLogger'
  s.dependency 'VidaTranslation'
  s.dependency 'MidTierOperations'
  s.dependency 'Contexts'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  s.dependency 'RxRelay'
end
