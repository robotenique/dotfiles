## This simple script will format a scala code that it's in the clipboard
## *only tested in MAC OS*
rm -f _tempScript.scala
# copy clipboard to temp file, inside current folder
pbpaste > _tempScript.scala
# format the file w/ scalafmt; You need to install scalafmt: https://scalameta.org/scalafmt/docs/installation.html#cli
# (you'll possibly have to install coursier and add it to the $PATH variable)
echo "Formatting scala code..."
scalafmt _tempScript.scala
# copy back the formatted file to clipboard
/bin/cat _tempScript.scala | pbcopy
echo "Finished"