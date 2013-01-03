package "zsh"
package "nginx"
package "vim"

user node[:user][:name] do
  password node[:user][:password]
  group_name "sudo"
  home "/home/#{node[:user][:name]}"
  supports manage_home: true
  shell "/bin/zsh"
end
