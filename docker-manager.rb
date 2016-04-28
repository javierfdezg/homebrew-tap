class DockerManager < Formula
  desc ""
  homepage ""
  url "https://github.com/javierfdezg/docker-manager/archive/0.0.4.tar.gz"
  version "0.0.4"
  sha256 ""

  depends_on 'jq'

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
