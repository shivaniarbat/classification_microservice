# list all the files in this directory
echo $PWD
for file in "$dir$PWD/test-images/"*
do
  echo "$file"
  curl -X POST -H "Content-Type: multipart/form-data" http://34.75.249.239:80/predict-image-label -F "file=@$file"
done


