# Override sudo attributes
default['authorization']['sudo']['groups'] = 'bubble', 'sysadmin'
default['authorization']['sudo']['users'] = []
default['authorization']['sudo']['passwordless'] = true
default['authorization']['sudo']['include_sudoers_d'] = false
default['authorization']['sudo']['agent_forwarding'] = true
default['authorization']['sudo']['sudoers_defaults'] = ['!lecture,tty_tickets,!fqdn']
default['authorization']['sudo']['command_aliases'] = []

# Customize chef-run
default['bubble']['users_databag'] = 'users'
default['bubble']['group_name'] = 'bubble'
default['bubble']['packages'] = true
default['bubble']['users'] = true
default['bubble']['sudo'] = true
default['bubble']['data_disk'] = false
default['bubble']['data_disk_device'] = 'vdb'
default['bubble']['nfs'] = true
default['bubble']['softethervpn-server'] = true
default['bubble']['softethervpn-config'] = 'vpn_normal.batch'
default['bubble']['softethervpn-psk'] = 'softether'
default['bubble']['community-templates'] = true
default['bubble']['cloudinit-metaserv'] = true
default['bubble']['cloudinit-password'] = 'password'

default['bubble']['systemvm_template']['jenkins_url']  = 'https://beta-jenkins.mcc.schubergphilis.com/job/cosmic-systemvm/job/packer-build/lastSuccessfulBuild/artifact/packer_output/'
default['bubble']['systemvm_template']['jenkins_md5']  = 'md5.txt'
default['bubble']['systemvm_template']['internal_md5'] = 'cosmic-systemvm_md5.txt'
default['bubble']['systemvm_template']['name']         = 'cosmic-systemvm'
