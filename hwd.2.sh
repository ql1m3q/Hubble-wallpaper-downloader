wget http://hubblesite.org/gallery/wallpaper/ 

cat index.html | grep -oe /gallery/wallpaper/pr'.\{1,8\}\/' >pr

for i in `cat pr`
do
    echo hubblesite.org/$i/1280x768_wallpaper/
    wget hubblesite.org/$i/1280x768_wallpaper/
done
