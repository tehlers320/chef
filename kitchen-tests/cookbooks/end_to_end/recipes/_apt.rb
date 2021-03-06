#
# Cookbook:: end_to_end
# Recipe:: apt_preference
#

apt_update "periodic apt update" do
  frequency 86400
  action :periodic
end

apt_preference "dotdeb" do
  glob         "*"
  pin          "origin packages.dotdeb.org"
  pin_priority "700"
end

apt_preference "a_fake_package" do
  pin          "version 5.1.49-3"
  pin_priority "700"
end

apt_preference "libmysqlclient16" do
  action :remove
end
