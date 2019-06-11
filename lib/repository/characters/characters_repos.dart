import 'package:avenger_information/models/character.dart';
import 'package:avenger_information/repository/ant_man/ant_man_repos.dart';
import 'package:avenger_information/repository/base/repository.dart';
import 'package:avenger_information/repository/black_panther/black_panther_repos.dart';
import 'package:avenger_information/repository/black_widow/black_widow_repos.dart';
import 'package:avenger_information/repository/captain_america/captain_america_repos.dart';
import 'package:avenger_information/repository/captain_marvel/captain_marvel_repos.dart';
import 'package:avenger_information/repository/doctor_strange/doctor_strange_repos.dart';
import 'package:avenger_information/repository/hawk_eye/hawk_eye_repos.dart';
import 'package:avenger_information/repository/iron_man/iron_man_repos.dart';
import 'package:avenger_information/repository/spider_man/spider_man_repos.dart';
import 'package:avenger_information/repository/thanos/thanos_repos.dart';
import 'package:avenger_information/repository/the_hulk/the_hulk_repos.dart';
import 'package:avenger_information/repository/thor/thor_repos.dart';

class CharactersRepos extends Repository {
  Future<List<Character>> getCharacters() {
    var list = indexing(<Character>[
      Character(
        name: 'Iron Man',
        appBarBg:
            'http://ucsdguardian.org/wp-content/uploads/2016/05/Feature_-Captain-America-Civil-War-02-Courtesy-of-SlickRickDesigns-for-CBM.jpg',
        drawerBg:
            'https://1.bp.blogspot.com/-olFt60uK5Wk/T8JiHzHxU4I/AAAAAAAAI74/jff2meDSids/s1600/Iron-Man-Wallpaper-HD-1080p-cyborg-photo1024.jpg',
        avatar:
            'https://thichanhdep.com/wp-content/uploads/2019/03/avatar-nhan-vat-iron-man1.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Neutral Good',
        repository: IronManRepos(),
      ),
      Character(
        name: 'Captain America',
        avatar:
            'http://www.mothershiptoys.com/image/cache/data/Hot%20Toys/MMS242-600x600.jpg',
        appBarBg:
            'https://www.mldspot.com/sites/default/files/field/image/Captain-America-Vs-Iron-Man-Civil-War-HD-Wallpaper.jpg',
        drawerBg:
            'https://stmed.net/sites/default/files/captain-america-wallpapers-27534-7704642.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Lawful Good',
        repository: CaptainAmericaRepos(),
      ),
      Character(
        name: 'Ant-Man',
        avatar:
            'https://www.eatyourcomics.com/wp-content/uploads/2015/05/AntMan_Poster_Cover_600x592-600x592.jpg',
        appBarBg: 'https://images.alphacoders.com/606/thumb-1920-606182.jpg',
        drawerBg:
            'https://marvelheroeslibrary.com/images/assets/images/titanium-does-not-bend-hd-1920x1080.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Neutral Good',
        repository: AntManRepos(),
      ),
      Character(
        name: 'Black Widow',
        avatar: 'https://avatarfiles.alphacoders.com/125/125695.jpg',
        appBarBg:
            'https://image2.tin247.com/pictures/2019/03/11/zgt1552260764.jpg',
        drawerBg:
            'https://wpblink.com/sites/default/files/wallpaper/comics/68129/black-widow-wallpapers-hd-68129-3101740.png',
        series: 'Marvel Comics',
        sex: 'Female',
        alignment: 'Neutral Good',
        repository: BlackWidowRepos(),
      ),
      Character(
        name: 'The Hulk',
        avatar:
            'https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2019/01/25/Pictures/_1e3fee26-2078-11e9-abd9-895ad40f6f04.jpg',
        appBarBg:
            'http://wallpaperinfinity.net/wp-content/uploads/2017/10/thor-vs-hulk.jpg',
        drawerBg: 'https://wallpaperaccess.com/full/113761.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Chaotic Good',
        repository: TheHulkRepos(),
      ),
      Character(
        name: 'Spider-Man',
        avatar:
            'https://oyster.ignimgs.com/wordpress/stg.ign.com/2018/09/Spiderman.jpg',
        appBarBg:
            'https://twinfinite.net/wp-content/uploads/2018/09/Spidey-8-1000x600.jpg',
        drawerBg:
            'http://image.downloadwap.co.uk/wallpapers/wp/new/37/spider-man_0J6pLL2Vjt.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Neutral Good',
        repository: SpiderManRepos(),
      ),
      Character(
        name: 'Doctor Strange',
        avatar: 'https://avatarfiles.alphacoders.com/569/56901.jpg',
        appBarBg:
            'https://www.xtrafondos.com/wallpapers/resoluciones/16/pelicula-doctor-strange_1920x1080_2712.jpg',
        drawerBg:
            'https://img5.goodfon.com/wallpaper/nbig/0/60/doktor-strendzh-doctor-strange-komiks-marvel-chernyi-fon-art.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Neutral Good',
        repository: DoctorStrangeRepos(),
      ),
      Character(
        name: 'Black Panther',
        avatar:
            'https://cdn1.thr.com/sites/default/files/imagecache/scale_crop_768_433/2015/10/marvel_black_panther_concept_art.jpg',
        appBarBg: 'https://www.ubackground.com/_ph/22/685875959.jpg',
        drawerBg: 'https://images5.alphacoders.com/953/953586.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Lawful Good',
        repository: BlackPantherRepos(),
      ),
      Character(
        name: 'Hawkeye',
        avatar:
            'http://genknews.genkcdn.vn/zoom/650_413/2019/2/12/hawkeye-ronin-jeremy-renner-1549950464056998665030.jpg',
        series: 'Marvel Comics',
        appBarBg:
            'https://static.comicvine.com/uploads/original/0/6063/4711921-untitled-1.jpg',
        drawerBg: 'https://wallpapercave.com/wp/wp1891369.jpg',
        sex: 'Male',
        alignment: 'Neutral Good',
        repository: HawkEyeRepos(),
      ),
      Character(
        name: 'Captain Marvel',
        avatar: 'https://avatarfiles.alphacoders.com/173/173574.jpg',
        appBarBg:
            'https://cdna.artstation.com/p/assets/images/images/010/771/506/large/felix-marquez-captain-marvel-magellanic-nebula-final-120518.jpg?1526139758&dl=1',
        drawerBg: 'https://wallpaperplay.com/walls/full/8/c/4/320659.jpg',
        series: 'Marvel Comics',
        sex: 'Female',
        alignment: 'Neutral Good',
        repository: CaptainMarvelRepos(),
      ),
      Character(
        name: 'Thor',
        avatar: 'http://mytabletennis.net/forum/uploads/19980/Thor-small.JPG',
        appBarBg: 'https://wallpapercave.com/wp/wp4061879.jpg',
        drawerBg: 'https://wallpaperplay.com/walls/full/1/3/7/301653.jpg',
        series: 'Marvel Comics',
        sex: 'Male',
        alignment: 'Neutral Good',
        repository: ThorRepos(),
      ),
      Character(
        name: 'Thanos',
        avatar:
            'https://farm1.staticflickr.com/824/28101511938_1a607a91fe_z.jpg',
        series: 'Marvel Comics',
        appBarBg:
            'https://img4.goodfon.com/original/1440x900/5/71/mstiteli-voina-beskonechnosti-avengers-infinity-war-thanos-t.jpg',
        drawerBg:
            'https://cdn.wccftech.com/wp-content/uploads/2017/02/Thanos-Chair-Throne.jpg',
        sex: 'Male',
        alignment: 'Chaotic Evil',
        repository: ThanosRepos(),
      ),
    ]);
    return returnData<List<Character>>(list);
  }
}
