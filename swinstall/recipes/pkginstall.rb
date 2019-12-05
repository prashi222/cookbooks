#packages = ['php', 'telnet', 'ftp', 'nfstest']
 #packages.each do |pkg|
  #yum_package pkg do
  #package %w(php telnet ftp nfstest) do
  #flush_cache [ :before ]
   #version [ '5.4.16-45', '0.17-67', '0.17-64', '2.1.5-1' ]
  #end
#end

['php','telnet','ftp'].each do |p|
  package p do
    action :install
    end
end

['httpd','vsftpd'].each do |p|
  service p do
    action [:enable, :start]
  end
end
