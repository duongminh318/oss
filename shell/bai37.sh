#bai37    
for file in *.txt; do
    mv "$file" "$(basename "$file" .txt).doc"
done
