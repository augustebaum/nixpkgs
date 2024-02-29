{
  buildPythonPackage,
  fetchFromGitHub,
  numpy,
  typing-extensions,
  sox,
  pytestCheckHook,
  soundfile,
}:
buildPythonPackage {
  pname = "pysox";
  version = "unstable-2024-01-23";

  format = "setuptools";

  src = fetchFromGitHub {
    owner = "rabitt";
    repo = "pysox";
    rev = "b10b361a1c7c016cf781987947f9d8d647b5ed6a";
    hash = "sha256-0W1yWHeYputGtPSaY2DDcYgsxTHlhuwb4Rotwf9jcWk=";
  };

  propagatedBuildInputs = [
    numpy
    typing-extensions

    sox
  ];

  # nativeCheckInputs = [pytestCheckHook soundfile];
  doCheck = false;
}
