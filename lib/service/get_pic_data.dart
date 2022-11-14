import '../dao/picture.dart';

var urlList = [
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F0%2F5130142a0048f.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670906776&t=7491270152d38c0b9744a12d9feae512",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fupload-images.jianshu.io%2Fupload_images%2F6659494-7592c7bad1d2ccb9.jpeg&refer=http%3A%2F%2Fupload-images.jianshu.io&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670908953&t=89f8ff1126bd07ec8ae82692151c20dd",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2Fc%2F5876e23735c75.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670908975&t=bd7317a59d879f37a6801ce4b8d28941",
  "https://img2.baidu.com/it/u=572644037,1424402701&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F121R0113012%2F20121Q13012-9-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670909016&t=179ebf1da91fd85e7b1827c3a66e650d",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdingyue.ws.126.net%2F2020%2F0422%2Fea6c6118j00q9710s0048d200sg00izg00it00cj.jpg&refer=http%3A%2F%2Fdingyue.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670909045&t=f511ad961773bbc58bac658292b336fc",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.pop-photo.com.cn%2Fcontent%2Fdam%2Fpopphoto%2Fxiaoxi%2F2017%2F201711%2F%25E6%259C%2580%25E4%25BD%25B3%25E5%25BB%25BA%25E7%25AD%2591%25E6%2591%2584%25E5%25BD%25B1%2F2.jpg&refer=http%3A%2F%2Fwww.pop-photo.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670909076&t=2e6263f2e2f1287719a5baf54637008e"
];

var titleList = ["风景1", "猫狗1", "风景2", "美食1", "美食2", "水果1", "风景3"];

List<Picture> getPicData() {
  List<Picture> res = <Picture>[];
  for (var i = 0; i < urlList.length; i++) {
    var pic = Picture(url: urlList[i], title: titleList[i]);
    res.add(pic);
  }
  return res;
}
