class DockerManager < Formula
  desc ""
  homepage ""
  url "https://github.com/javierfdezg/docker-manager/archive/0.0.5.tar.gz"
  version "0.0.5"
  sha256 "417b6276e61db70e2bc00417432c222d59cbced82c7fd37ef80a19eb389930ce"

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
