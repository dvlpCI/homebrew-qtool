class Qtool < Formula
  desc "QTool:含分支json文件的创建+Jenkins打包"
  homepage "https://github.com/dvlpCI/script-branch-json-file"

  version "0.9.29"
  # revision 1  # 版本号不变，但 revision 递增，会触发升级
  url "https://github.com/dvlpCI/script-branch-json-file/archive/#{version}.tar.gz"
  # url "https://github.com/dvlpCI/script-branch-json-file/archive/0.9.13.tar.gz"
  sha256 "50a45082b25cab871f02f6267ee47a36dd5cac9d8b23cd83ec2a9cd33ce474fd"
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
