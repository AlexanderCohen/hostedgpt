namespace :fly do
  task :ssh do
    sh 'fly ssh console'
  end

  task :console do
    sh 'fly console'
  end

  task :dbconsole do
    sh 'fly ssh console --pty -C "/rails/bin/rails dbconsole"'
  end

  task :config do
    sh 'fly ssh console -C "printenv"'
  end
end