class Qtool < Formula
  desc "QTool:含分支json文件的创建+Jenkins打包"
  homepage "https://github.com/dvlpCI/script-branch-json-file"

  version "0.9.33"
  # revision 1  # 版本号不变，但 revision 递增，会触发升级
  url "https://github.com/dvlpCI/script-branch-json-file/archive/#{version}.tar.gz"
  # url "https://github.com/dvlpCI/script-branch-json-file/archive/0.9.13.tar.gz"
  sha256 "8cd0880183e71c18985a5e449b3e48384abe0f24f4ee1ce8b35f76937e229234"
  # shasum -a 256 xxxx.tar.gz
  # version /(\d+\.\d+\.\d+)/  # 从 URL 中提取版本号

  def install
    # Install script to bin
    # bin.install "helloworld.sh"
    bin.install "qtool"
    lib.install Dir["*"] # 记得添加lib目录，并将源码存放于lib里的src下
  end


  def uninstall
    # rm "#{bin}/helloworld.sh"
    rm "#{bin}/qtool"
  end

  test do
    # Test your script
    system "#{bin}/qtool", "--version"
  end
end
