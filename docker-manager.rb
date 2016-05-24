class DockerManager < Formula
  desc ""
  homepage ""
  url "https://github.com/javierfdezg/docker-manager/archive/0.0.7.tar.gz"
  version "0.0.7"
  sha256 "88381b3f4b6b969d4df2d1603afec07a7b1acbd783e731dfb281dd51a17d4ae5"

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
