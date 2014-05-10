#!/usr/bin/env sh

# Make a new directory to hold temporary files
mkdir resized

# Blur all screen photos when copying them
# for f in screen-*
# do
#   convert "$f" -filter Gaussian -resize 1% -define filter:sigma=5.0 -resize 10000% "resized/$f"
# done

# Copy all of the photos
cp photo-* resized/

# Resize all of the photos so they aren't gigantic
for f in resized/*.jpg
do
  echo "$f"
  convert "$f" -resize 8% "$f"
done

# Append all of the photos together side-by-side
for f in photo-*
do
  PFIX=$(echo $f | cut -c7-19)
  convert \( "resized/photo-$PFIX.jpg" "resized/screen-$PFIX.jpg" +append \) -append "resized/appended-$PFIX.jpg"
done

# Make a GIF!
convert -delay 10 -loop 1 resized/appended-*.jpg animated.gif

# Delete all of the temporary files
rm -rf resized