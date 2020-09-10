echo "Compiling pdfs"
python3 compile_latex.py

echo "Copying dotfiles"
cp ~/.vimrc* dotfiles
cp ~/.vim/UltiSnips/tex.snippets dotfiles
cp ~/.vim/spell/en.utf-8.add dotfiles

git add -A
git commit -m "Update notes"
#git push
