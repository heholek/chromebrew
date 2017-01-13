require 'package'

class Memcached < Package
  version '1.4.34'
  source_url 'https://memcached.org/files/memcached-1.4.34.tar.gz'
  source_sha1 '7c7214f5183c6e20c22b243e21ed1ffddb91497e'

  depends_on 'libevent'

  def self.build
    system "./configure"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
