# 
wget http://hubblesite.org/gallery/wallpaper/ 
#
cat index.html | grep -oe /gallery/wallpaper/pr'.\{1,8\}\/' >pr

#
for i in `cat pr` 
#
do
#
  wget hubblesite.org$i
#
done
#
for i in index.html.* 
#
do
#
cat $i | grep -oe /gallery'.\{1,30\}\/1280x768_wallpaper/' >> pr1280
#
done
#
for i in `cat pr1280` 
#
do
#
  wget hubblesite.org$i
#
done

#to samo

#for i in `cat pr`
#do
#    echo hubblesite.org/$i/1280x768_wallpaper/
#    wget hubblesite.org/$i/1280x768_wallpaper/
#done

#for i in index.html.*
#do
#    wget -c `cat $i | grep -oe imgsrc'.\{1,200\}\jpg' | sed 1d`
#done
