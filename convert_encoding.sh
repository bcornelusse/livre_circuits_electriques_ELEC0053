mkdir backup
cp *.tex backup/  # Toujours faire une copie de sécurité !
for f in *.tex; do 
    iconv -f ISO-8859-1 -t UTF-8 "$f" > "$f.tmp" && mv "$f.tmp" "$f"
done