from pathlib import Path
import subprocess

for path in Path('.').rglob("*.tex"):
    cmd = ["latexmk", "-pdf", "-cd", str(path)]
    print(cmd)
    subprocess.run(cmd)
    subprocess.run(["latexmk", "-c", "-cd", str(path)])
