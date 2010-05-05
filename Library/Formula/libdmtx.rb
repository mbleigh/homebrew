require 'formula'

class Libdmtx <Formula
  depends_on 'imagemagick'
  depends_on 'pkg-config'
  
  url 'http://downloads.sourceforge.net/project/libdmtx/libdmtx/0.7.2/libdmtx-0.7.2.tar.gz'
  homepage 'http://www.libdmtx.org/'
  md5 'e23705cd9bd40b9d7cf1e7c750c67ca5'

# depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
