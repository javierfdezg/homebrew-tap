class DockerManager < Formula
  desc ""
  homepage ""
  url "https://github.com/javierfdezg/docker-manager/archive/0.0.8.tar.gz"
  version "0.0.8"
  sha256 "f47b58cf379426f9bc12b34bcd05b07ba42b2b46290b88f4df00f4a7f28eddd4"

  depends_on 'jq'
  depends_on 'moreutils'

  def install

    Dir['lib'].each do |path|
        app   = File.basename(File.dirname(path))
        src   = "#{path}/."
        dest  = "#{lib}/#{app}/"

        print src
        print dest

        mkdir_p dest
        cp_r src, dest
    end

    bin.install "docker-manager"
  end
end
