require 'bundler/setup'

require 'desktop'
require 'clockwork'

IMAGE_PATH = File.expand_path('~/Dropbox/Mean/Images')
IMAGES = Dir.glob(File.join(IMAGE_PATH, '*.{jpg,jpeg}'))

module Clockwork
  handler do |job|
    Desktop::CLI.start(['set', IMAGES.shuffle.first])
  end

  every(20.minutes, 'frequent.job')
end
