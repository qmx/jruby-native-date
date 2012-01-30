require 'java'
require 'target/jruby-native-date-0.1-SNAPSHOT.jar'
require 'me/qmx/jruby/ext/date/date'
require 'ostruct'
p Date.send(:_strptime_i, "2010", "%Y", OpenStruct.new)