require "git"

def current_dirname
  File.basename(Dir.current)
  "shellstatus"
end

def local_remote
  # FIXME: work out if this is local or remote
  "➡️ "
end

def machine_name
  name = `hostname`.chomp
  if name.includes?(".")
    name = name[/^([^.]+)/, 1]
  end
  "#{local_remote} #{name}"
end

# @return [Git::Repository] git repo when it exists
# @return [Nil] not currently in a git repo
def git_repo
  Git::Repository.open(Dir.current)
rescue Git::Error
  nil
end

def git_branch_dirty
  return unless git_repo
  "main*"
end

def git_stash
  return unless git_repo
  "1 stashed"
end

def datetime
  Time.local.to_s("%Y-%m-%d %H:%M:%S")
end

def battery_info
  "101% bat 🔋 (15:62)"
end

def ruby_version
  version = `ruby -v 2>/dev/null`
  if version
    version[/ruby (\d+\.\d+\.\d+)/, 1]
  end
rescue # what?
end

bits = [
  # local_remote,
  machine_name,
  current_dirname,
  git_branch_dirty,
  git_stash,
  datetime,
  battery_info,
  ruby_version,
]

puts(bits.compact.join(" | "))
