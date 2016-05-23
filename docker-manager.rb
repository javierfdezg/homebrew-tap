class DockerManager < Formula
  desc ""
  homepage ""
  url "https://github.com/javierfdezg/docker-manager/archive/0.0.6.tar.gz"
  version "0.0.6"
  sha256 "33d87499878881fcc98405028952e6c6af6bcf3d13f59a444787a7511215ef7a"

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
