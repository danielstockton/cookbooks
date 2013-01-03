package "git" # pacman -S git
package "zsh"
package "nginx"

user node[:user][:name] do
  password node[:user][:password]
  gid "sudo"
  home "/home/#{node[:user][:name]}"
  supports manage_home: true
  shell "/bin/zsh"
end
