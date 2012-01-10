load 'lib/goto_css.rb'
load 'lib/micro_plugins.rb'
load 'lib/view_web_specification_failures.rb'
load 'lib/view_xml_specification_failures.rb'

bind 'banana W', ViewWebSpecificationFailures.new
bind 'banana X', ViewXmlSpecificationFailures.new
unbind 'ctrl T', "Sorry, it's too easy to hit 'ctrl T' when you didnt mean to, please use 'banana T' to do a subversion update"
bind 'banana T', RunIntellijAction.new('Vcs.UpdateProject', 'Subversion Update')
bind 'alt shift S', GotoCss.new
bind 'banana M', MicroPlugins.new