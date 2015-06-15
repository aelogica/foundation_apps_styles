require "bundler/gem_tasks"

desc 'Download latest foundation-apps styles and assets'
task :update do
  FileUtils.mkdir_p 'tmp'
  system 'git clone https://github.com/zurb/foundation-apps.git tmp'
  FileUtils.rm_rf ['scss', 'iconic', 'docs']
  FileUtils.cp_r 'tmp/scss', '.'
  FileUtils.cp_r 'tmp/iconic', '.'
  FileUtils.cp_r 'tmp/docs', '.'

  FileUtils.rm_rf 'tmp'
end
