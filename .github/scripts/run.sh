for f in $1
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.pdf"
  `pandoc -N --variable "geometry=margin=0.8in" "$f" --pdf-engine=xelatex -o "$filename.pdf"`
done
