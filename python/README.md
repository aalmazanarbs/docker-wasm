# Create WebAssembly file with Spin

```bash
docker run --rm -it -v $(pwd):/python python bash 

curl -fsSL https://developer.fermyon.com/downloads/install.sh | bash
mv ./spin /usr/local/bin/spin

python -m venv .venv
source .venv/bin/activate
pip install componentize-py==0.11.2 spin-sdk==2.0.0 mypy==1.8.0
spin new python-example -t http-py
spin build
```