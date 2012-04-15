maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures SSH."
version           "0.0.1"
recipe            "sshd", "Installs and configures SSH"

%w{ ubuntu }.each do |os|
    supports os
end
