function arc
    # set -l gem_file (gem which amazing_print)
    set -l gem_file "/Users/aguerrarddeslauriers/.gem/ruby/3.3.6/gems/amazing_print-1.7.2/lib/amazing_print.rb"
    set -l gem_path (dirname (dirname $gem_file))
    # env RUBYOPT="-I$gem_path/lib -ramazing_print" bin/rails console
    env RUBYOPT="-I$gem_path/lib" bin/rails console
end
