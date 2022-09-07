## This simple script will format a scala code that it's in the clipboard
## *only tested in MAC OS*
rm -f _tempScript.scala
# matching keywords
SUB="object "
SUB2="case class "
if [[ "$(pbpaste)" == *"$SUB"* ]] || [[ "$(pbpaste)" == *"$SUB2"* ]]; then
    pbpaste >> _tempScript.scala
else
    echo "object A{" > _tempScript.scala
    pbpaste >> _tempScript.scala
    echo "\n}" >> _tempScript.scala
fi

# format the file w/ scalafmt; You need to install scalafmt: https://scalameta.org/scalafmt/docs/installation.html#cli
# (you'll possibly have to install coursier and add it to the $PATH variable)
echo "Formatting scala code..."
scalafmt _tempScript.scala
if [[ "$(pbpaste)" == *"$SUB"* ]] || [[ "$(pbpaste)" == *"$SUB2"* ]]; then
    /bin/cat _tempScript.scala | pbcopy
else
    # copy back the formatted file to clipboard, removing the "object" wrapper
    # remove the first two spaces of each line
    # remove first line
    # remove last line
    sed "s/  //" _tempScript.scala | tail -n +2 | ghead -n -1 | pbcopy
fi
echo "Finished"