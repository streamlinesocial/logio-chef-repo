maintainer        "Streamline Social"
maintainer_email  "support@streamlinesocial.com"
license           "Apache 2.0"
description       "Deploy log.io server"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.0"

recipe            "logio", "install node.js deps for logio"
recipe            "logio::server", "install / configure log.io server"
recipe            "logio::client", "install / configure log.io client"

%w{ centos }.each do |os|
  supports os
end

%w{ iptables nodejs }.each do |cb|
  depends cb
end
