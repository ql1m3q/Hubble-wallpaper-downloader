wget http://hubblesite.org/gallery/wallpaper/ 

cat index.html | grep -oe /gallery/wallpaper/pr'.\{1,8\}\/' >pr

for i in index.html.*
do
  wget -c `cat $i | grep -oe imgsrc'.\{1,200\}\jpg' | sed 1d`
done
