module CsoundAPIRuby
  module Lib
    PATH = File.expand_path(File.join('..', 'lib'), __FILE__)
  end
end

%w(
  functions
).each { |f| require File.join(CsoundAPIRuby::Lib::PATH, f) }
