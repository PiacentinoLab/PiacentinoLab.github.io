require "digest/md5"

# jekyll-cache-bust's `bust_css_cache` filter hashes files under
# `assets/_sass/**/*` to fingerprint main.css. This theme's Sass partials
# live in `_sass/` at the repo root, not `assets/_sass/`, so that glob
# always matched zero files -- the filter has been hashing an empty string
# on every build, producing the same "?v=d41d8cd9..." (MD5 of "") for
# main.css regardless of content. Browsers cache that URL indefinitely, so
# CSS changes never actually reach visitors without a manual cache clear.
# Recompute the hash from the real Sass source instead.
module Jekyll
  module CacheBust
    def bust_css_cache(file_name)
      repo_root = File.expand_path("..", __dir__)
      sass_files = Dir[File.join(repo_root, "_sass", "**", "*")].reject { |f| File.directory?(f) }
      sass_files << File.join(repo_root, "assets", "css", "main.scss")
      contents = sass_files.sort.map { |f| File.read(f) }.join
      [file_name, "?v=", Digest::MD5.hexdigest(contents)].join
    end
  end
end

Liquid::Template.register_filter(Jekyll::CacheBust)
