require 'formula'

class Ngrep <Formula
  url 'http://downloads.sourceforge.net/project/ngrep/ngrep/1.45/ngrep-1.45.tar.bz2?use_mirror=iweb'
  homepage 'http://ngrep.sourceforget.net/'
  md5 'bc8150331601f3b869549c94866b4f1c'
  version '1.45'

  def install
    system "./configure", "--prefix=#{prefix}", 
                          "--disable-debug", 
                          "--disable-dependency-tracking",
                          "--with-pcap-includes=/usr/include"
    system "make install"
  end
end
