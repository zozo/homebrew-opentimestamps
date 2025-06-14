class OpentimestampsClient < Formula
  include Language::Python::Virtualenv

  desc "Command-line client for OpenTimestamps"
  homepage "https://github.com/opentimestamps/opentimestamps-client"
  url "https://github.com/opentimestamps/opentimestamps-client/releases/download/opentimestamps-client-v0.7.2/opentimestamps-client-0.7.2.tar.gz"
  sha256 "083a08f59c3123682d6742cc57d3e229ed7b3397807638836efe3a949517accb"
  license "MIT"

  depends_on "python@3.11"

resource "appdirs" do
    url "https://files.pythonhosted.org/packages/source/a/appdirs/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/source/g/gitdb/gitdb-4.0.12.tar.gz"
    sha256 "5ef71f855d191a3326fcfbc0d5da835f26b13fbcba60c32c21091c349ffdb571"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/source/g/gitpython/gitpython-3.1.44.tar.gz"
    sha256 "c87e30b26253bf5418b01b0660f818967f3c503193838337fe5e573331249269"
  end

  resource "opentimestamps" do
    url "https://files.pythonhosted.org/packages/source/o/opentimestamps/opentimestamps-0.4.5.tar.gz"
    sha256 "56726ccde97fb67f336a7f237ce36808e5593c3089d68d900b1c83d0ebf9dcfa"
  end

  resource "pycryptodomex" do
    url "https://files.pythonhosted.org/packages/source/p/pycryptodomex/pycryptodomex-3.23.0.tar.gz"
    sha256 "71909758f010c82bc99b0abf4ea12012c98962fbf0583c2164f8b84533c2e4da"
  end

  resource "PySocks" do
    url "https://files.pythonhosted.org/packages/source/p/pysocks/PySocks-1.7.1.tar.gz"
    sha256 "3f8804571ebe159c380ac6de37643bb4685970655d3bba243530d6558b799aa0"
  end

  resource "python-bitcoinlib" do
    url "https://files.pythonhosted.org/packages/source/p/python-bitcoinlib/python-bitcoinlib-0.12.2.tar.gz"
    sha256 "c65ab61427c77c38d397bfc431f71d86fd355b453a536496ec3fcb41bd10087d"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/source/s/smmap/smmap-5.0.2.tar.gz"
    sha256 "26ea65a03958fa0c8a1c7e8c7a58fdc77221b8910f6be2131affade476898ad5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ots", "--help"
  end
end