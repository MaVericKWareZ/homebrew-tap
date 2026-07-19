class Chime < Formula
  include Language::Python::Virtualenv

  desc "Friendly terminal alarms, timers & pomodoro"
  homepage "https://github.com/MaVericKWareZ/chime"
  url "https://files.pythonhosted.org/packages/22/be/260584190887caf8f43076f519b52cc65c4ce9c141f6bc459f3da91f4057/chime_cli-0.3.0.tar.gz"
  sha256 "6f3626b04dcb86be3b7783d6345a06aca7203231bf9ca50ad18f5731bc2093ff"
  license "MIT"
  head "https://github.com/MaVericKWareZ/chime.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "chime #{version}", shell_output("#{bin}/chime version")
    assert_match "Usage:", shell_output("#{bin}/chime help")
  end
end
