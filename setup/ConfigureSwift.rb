module Pod

  class ConfigureSwift
    attr_reader :configurator

    def self.perform(options)
      new(options).perform
    end

    def initialize(options)
      @configurator = options.fetch(:configurator)
    end

    def perform
      keep_demo = :yes

      framework = :none
      configurator.set_test_framework "xctest", "swift", "swift"

      snapshots = :no

      Pod::ProjectManipulator.new({
        :configurator => @configurator,
        :xcodeproj_path => "templates/swift/Example/PROJECT.xcodeproj",
        :platform => :ios,
        :remove_demo_project => (keep_demo == :no),
        :prefix => ""
      }).run

      `mv ./templates/swift/* ./`

      # There has to be a single file in the Classes dir
      # or a framework won't be created
      `touch Pod/Classes/ReplaceMe.swift`
    end
  end

end
