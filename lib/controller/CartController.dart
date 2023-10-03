import 'package:document/globals.dart';
import 'package:document/modual/modual.dart';
import 'package:document/views/Products/Samsung.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<String> cartproducts = <String>[].obs;

  var showProduct = <Product>[
    Product(
        id: 1,
        brand: "GalaxyS23",
        name: "Samsung",
        Quantity: productList.length,
        price: 12499,
        link:
            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVEhgSEhIYGBgYGBgYGBgYGBgSGBgSGBgZGRgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QD00Py40NTEBDAwMEA8QGhISGDQjGSE0NDExPzExNDQ0MTQ0NDExMTE0NDE0NDQ0PzQ3MTExPzQxNDQ0NDExMTQ0NDQ1MTQxNP/AABEIAPcAzAMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xABKEAACAQICBAgHDQcEAgMAAAABAgADEQQSBQYhMRMiNEFRYXFzB1JygZGSshYjMkJTobG0wcPS4fAUFSQzs9HiY4Ki8WKTQ8Ly/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECAwT/xAAhEQEBAAIDAQACAwEAAAAAAAAAAQIRAxIxIUFhEyJxBP/aAAwDAQACEQMRAD8A6PrPrCuFSwymoQWAa+VEGwu9ttrmwA2sdg5yOUaT1tr1GJ4R32/HdkTzUkKqB23PXJOv+OZ8S+3YajL/ALKJ4NV7MwqN2tMtRpFja4AALMzGyqg3sx5gJRNOmH50T1Sftg/e7+InqfnKPEaYoqbIj1P/ACLCkD1quUm3aY7hcalTYl1bxGsb9OVha/YQDAtv3u/iJ6n5wfvd/ET1PzldDgWH73fxKfq/nB+938Sn6n5yuMECx/e7+JT9X84n96ve+RN1vg7PpkCCBYrpZybCmlzu4nP6YnSum0o8R1D1R8JEPBoh8V3HGZuoW64zgny562wmlTd1B8cCyf8AIiY83JJJuTtJO8k7yZZNi9OttX4tKiBzDI7fOXhe66t8nR9RvxyhyQcHL1Ta+919b5Oj6jfjgOt1b5Oj6h/FKHg4XBx1Nr8a3VRs4Ol6h/FB7r6vydL1D+KZ4pDSwIJW45xu+eTqrQ+6+r8nR9Q/ihe7Cr8nS9Q/imcO/Z/1CjQ0vuwrfJ0f/W34oXuwrfJ0fUb8czRhxoaT3YVvk6PqN+OP4fXeup+AgH/gatFvMyPsmUgkHcNTPCOXOSszMo2sHIaoic7qwA4RBzgjMBt27p1ZagIBG0EXBG0EHrnkPR2LalVSqp2owbtA3jsIuPPPT2pGIzYMLvFNnpqf9MHMg8yso80g5Jref4h9h2VMRv5/4ipumZ0xWK4UqPj1FVvJVcwHrEH/AGiafXDlDeXiPrFSZ3E0g9M02NrkEHxXF9p6iCQfN0SjP4dFINzY2uvWei/NE0yVdSNhv6DeOPhaimxS/Ru+bpk3B4Ag56p2/FUbYFq5ub+f0i80urOr1PEU2qVHcccoAhAy7AbtcHpmXB5zHqGJdL8HUdL7DlYrcddjtkstnwHi6OSo6Zs2R2W458pIv80aghSgQQoUB8N/D4nYf5Po98TfMwqzTpyfFdyPbWZymNg7BOnFN2s0SpF8HHVEcUT0TFNo3BQcFJypFcHNfxp2VjUY29KWxoxl6EzlxLMlS6WjdpZVaEh1KdpwywsWUxBDYQphRQQQSAx9hnprwd1P4Z+Kf5v3NGeZR9hnprUDkz96P6NGRXM9cOUN5eI+sVJQmXetVQPWzr8F2rMvNxWr1GBt2EShxGJ4Kk1UfDzBE58rkEs9ukAbOtgeaA5UpFPhsEvzM60yf9pIPzRHBW42++5rhwexheZrKz3ckk72Jux7WP2mP6PxZR7fFPwl5mH9+uBfQQPsNv1aFeAILwjBAEEKETAkpyfFdyP6izNK5sOwTSUuTYruR/UWZtE2DsE68PtZyAuemAMY5kihTno61CFc9Jj6V26ftiRThhJqSxEmnijzi/zSUjo3V2yvCxazpjamkupheiQK9Dqk/D1iOsdBkrg1cbN/RzzVwxyib0y9WjaRiJs8XqhjVQ1P2SsVAvcISbdOT4Vuu0rNFaq4vGXOEwzVFU2LXVEv0Z3IUnqBnh5MJPsrpKz0KWum9AYnCMExVB6ZO4kAq3TlZSVbzGVdpxUPznprUDkz96P6NGeZR/eeitTtOUcPQZKzEMXDDYTdeCpC97dKmSq5xpo7KXkN7byi0nTL0SBvRs9ulSMreji/PLzTR2UvIb23lVfoO3pgZyhVynbu5xtsRe9iBzR7C0DUe6jYNpO4dQ/KWlTCoTc0x5jYeggx1RsygBV6B/1AXfo83YNkK8F4RMA7wrwQoB3hEwrwrwJVPk+K7kf1FlHRXijsH0S7on+HxXcj+osqcOvFXsH0Tvwe1mgEjipHFSPKk9sjJgJFCnJK046tONQQxShilJwpRQozXVUFac2/gt0ctTHF3APBIXUHaM5ZVU+YEntseaZfgZe6maXGDxQqMCUZSj22kISCGA57EDzXmOXHLpZPSRvDr5bHnCGiMgq8DnzHNnzZC1rWtm5ujb1Q9fNZzo2lTXDUEL1WqEZlIpqAQzsVUglmap0jex7cXrhj6DY81sJl2ZGLqcyvXHGzgHZs4o6yDIemNJ18WFOIfPlDBeKiWDWv8EDxR6Jxx/55l1utTX1bbG0xuMXS2gK1arSCutOq1htC16AYhkJ2gG3oYjbPPU7ZpjWjDUNCfsmHUJUqI1DgwSSub+bUYnaQwYkHeS1uY24xVSxnmywst+aXZof3nVavN5K+yJyoD7Z1SrzeSvsic1Vemt1LyG9t5W3UKzuSEQXa3wiSbKq3+MT9p5pZ6dBHBgixCuCDsIIqOCCO2Z/S5PAADdwlz6hy3/5QI1fTTk+9qiDmAVXNut2BJj+C0jnORwoJ3Moyi/QwGy3WLStwxXaCt7i1/FPM1ufsjaD3wAdP/cDQnZBeBztPmv22F4m8AyYV4V4V4AvATChEwJdHk+K7ke2sgYVOIvkj6JOocnxXcj+osj4Nfe08lfoE78F+1KcRJIRIaJH0SersmiUSOpTjqJH0SXsaMpSi1pSSlOPJTjsukMUZfanaDXEYkLUF0RS7L41iAqnqubnqEhLSmh1Lxa0cTxzYOpTMdgDXBUk8w2W88xyZ3rdemmqbTmC4Y4Equ/g7FF4LNuyenZutfZMbrZq4MLUD0h7y5sBvyPvKX6DtI7COaSdddCrSrcIrX4UsxTnDXuxv0Ek/PL3QGk6eMw5wuK2vbLtNjUUbmB8cW29Yv2cMb0kyxvz8rpEp4W+gKqC1zQxABPW1S15wDEpvBG0fTPTGkdHihoytRUlgtKrYm1zfM223bOA6w4WzioNz7/LH9xt9MuE7Y5Zftm/Ky5E6nV5vJX2ROX1F2mdYpYOpUGanTZgAoJANg2RTb0EemefKarSt1z5S3l4j6xUmecAgqwup3jn2biOsf3mg1za+JYjx6/o/aKkz5kFW+izfiOCO0A+gkGS8Lhkp7Rx3PPzD0R8iFAMQRN4IB3hEwrwoAvChGC8CZQ5Piu5HtrEYFfe08hfoEVhuT4ruR7axeAX3tPIX2ROvDftEpFklEjaLJVNJ37LopEkhEhIklIkdl0SqR9Ui0SPoknY0QiSdozRrVqi012X3nflUbz+uqNIk0upoArv05Db1lvMZZagp9O6OelVyOxZQoyMxueDubDqsb7Jc6K1QRqYfEFgzAEKpC5RzXNt/0Q62iqlTGtnRshfMWIOXgxuF924AWj2uWIuVog7AM7DpO5b+hvSJzuVupKiLp7Qj0U4SnWqOg2OjuWsp2X6Cu4Wt+XL9PYTiVKfi8dPNxgPRcTsmEVho1hUv/LqWvvyENl+a1vNOY6bSzI/SCp820fSfROvBl7jUs+OW1xPSng75M/ej+jRnnLSVLJUdPFZgOzm+a09FeD+qBhnFx/MHR8jRnHl9SOSafO2n5De28qLy20/vp+Q3tvKiYUd4UIwrwDJhXhXhXgHeFeFeAwBeAwrwoE3C8nxXcj+osf0cPe08hfZEYwvJ8V3Q9sSXo0e9p5CeyJvj9qxOprJVNIzTWTKazpto5TWS6aRumklU1k2FokeRIEWPosmwSJJOEqsjh1NmU3H0EHqiVWOKsmxoRrMcv8rjeVxb9O68pK9dnc1GN2JB3XGzcLHm2bpPoaGd6S1EIN78U8U7CRsO47uqQ62HZDldSp6xb0dMzNJEnTWmjVorTVct7F+i4+KOq+30THabp3pX8V1PpuPtl7WWVWll95f/AG+2s3hdZRbP61yzWZLV2PjKrfNl/wDrN/fYPJX2RMTravvinpQD0M395teYeSvsiTl9c4rNcaYXEFFFlV6yqOhVr1AB6AJniZotduVN5eI+sVJnCZzUZMImJJgvAVE3hXgvABMK8ImFeAq8KFBAnYTk+K7oe2JYaLX3pPIT2RK7CH+HxXdD2xLTRQ96p+QnsiaxWLGksl0ljFJZMpLN2tHqayXTWM0xJKCY2p1BH0WIQR5BCFqIsCEoiwIEzBaSqUxZWuvisLj+4l3g9KLW4j0jc79mde07NkjaM0ZSNMVah2G+wnKosSNp590fraZpoMtFQbdAyr+czWScbq6jbabFD0b1/uJkdYdEVqVGoXS67OMvGW2YbTzjzy1xml6zHNwhW24LxR6Ofz3kPSusjthno1FDZ1KBxxSCecjcd3Naax3uL9047rf8NepPpZp2bUjRdCth2arTzEVAAbnYvA0jbf0k+mcY1rN3PUFH2/bO7+Djkr979zRl5PWXKNeD/FN5eI+sVJmyZoteD/FN5eI+sVJnLzABhQEwrwDhQrwrwDhQXhEwBeCCFeBPwnJ8V3Q9sS30UPeafkJ7IlPg+T4ruh7Yl1ooe80/IT2RNYrFpSEmUhItMSZSEtaSaYklBGKckoJA8oj6CMrH0EiU4oiwIhY4JUXNDRnC4dGVrMM2wm6njHm5jKtsOwfJkObxbbf+uuS9DCtm963fGv8AA8/X2bZqOLm5s1uq9vptJvQzdXQ608O9SoQXynKL8VSRs7TMFpWpuHaf7TX6z8PmvV+BfiZb5f8A9dswGmcRZWbzD6J04592MTp6pmLnpPzX2Tvvg45K/e/c0Z570q2wz0F4OOSv3v3NGY5PUcn145W3l4j6xUmcJmi165W3l4j6xUmbvMgQQrwjAMQoIUA4kwXgvAK8EIwQLDB8nxXdL7Yl9oge80/IT2RKDBcnxXdL7Yl/on+TT8hPZE1isWtKS6YkWlJlOWrtJpySkj05ISRUhI6saSOrDJ1Yq8bBgLQi7o6W4PDqqC7ca5tsW7H0mU9TEvnz5mzb83P+uqafQFcfs4uCAt7sbAHaWJHULyPU1pohrZXK+NYemxN7ST/BW4nWAPhatOqLOUYK1uK5ts7G+b6JyXTuJu2QHdv7T+vnnZ9bNKKmjqlZAXVkKgrY2z8UMwO5QSAecTz9jKxJJJ2nb5514/KKzSD3BnojwcckfvfuaM84Ypr3no/wb8kfvfuaM55+pHJNej/Fv3mI+sVJm7zSa9crfvMR9YqTNGZUcImCJvAF4ILwoAh3hQQBBBeFAn4Hk+J7oe2JoNEn3mn5CeyJn8DyfFd0vtiXeim95p+QnsibwguqRkylK+k8l0nm7DaehklDIVN5IR5nRtLVo6rSKrxQeTQk5oTPGC8bZ+iNI2WGQ1NH5U+FlYW6WDEkef7ZhcZXy3vstvvstbfeWmidOthyboWQ7WXcQfGU9NpZVde8CDnanULj/QLNcdDbvniSy+bCMhpaErnEKVzUa7BW2MA4YICDuYkg23gtbfOB4mpNzr9rrVxq8ElJ6WHUhiGF3dhtUuRsUDflBO3bfdbndV50xlktv5S0zVO+ekvBvyR+9+5ozzUxnpTwcckfvfuaM4536scl175W/eYj6xUmavNJr3yt+8xH1ipMzIo4UMmFABghXggCCFCvAO8EKCBYYHk+J7pfbEs9GPaknkJ7IlXgeT4nul9sSTganETyF+gTrwzdqVf06kmUqkpKdaSaded7im12lWSVqykTESQmImLgbXC1orhpUjEQziZnqbWbV5P0Fp+nhnd6oYhlyjLa9735yJlKuOtu/KVmJxRO8zU49m3UavhOwq76Nb0U/wAch1fC7g130K/opfbUlj4ONIj92gupRKJqZqjlVRhnd2ZdvwVDWJNtoPRK+r4XcCtTIKddkvbhAigW6QpYNbzX6py1N2THev2ql1k8K2Er4Svh0oVw1Wk6KWFPKGdSATZybbeicacz0hr3ppToirWoq1alWpMoenlIVailVdgSDlBNjbaOcb7ebWMTKaupoEZ6V8HHJH737mjPNM9LeDfkj979zRmKrkmvh/jH7zEfWHmZmk185W/eYj6xUmakB3hQoIAjeY7f1zxy8K8Bssf107oMx2frnjl4UBvOf12wyxt6YuCBPwB94xXdr7YjeGqcRewfRHMB/IxXdr7YkWgeKOwfRO/B7Waskrx9K8rkO6Poebr/ACnr1GFilfrjyYmVym1tu3YRz+aOcINmztts6hs6d/nk6xdrEYroI9MQ1fptIIqbj6dnbs2c9+aNPU6D/wB+aTUNpdXESHUrRmpWkSrVi/B2rRmHbE6tGlhtrmk65RsLOlVi69rWI/3ThNdiGKkEMCQVIsQw2EEHaDfmmu1H17fRzMjKalBzmdAbMr2AzoTsvYAEHYbDdOnYjX3Rq2xFbD1UqWBBqYUrUB5gHItf/daeS5XC2fita2h6EwL4bVmsmKBUtQxDZW2FRUDZFIO4kkG28FpwMTf+EDwitpBf2ejTNLDhgxDEZ6jDdntsCg7coJ2gG+62AvOcUU9LeDfkj9791SnmmelfBvyR+9+6pSVXJNfeWP3mI+sPM1NJr6f4x+8xH1h5mYAvBCggCCCCAIImCAIqJhiBYYD+Riu7X2xINA7B2fZJuCYChieumPbErqZ2DsE68N1azUtH3fq8fV+b9XkNWjmaemZM6TVbm/Pq3Qg/5827d1dMiF+nfEmrs/XbHc0mGp+txP62xl63XI1Sr+vNI71Jm5ro+9aTdWtDvjcXTwqG2Yku1r5aai7t6Ng6SQJSs86X4CQv7fWJtmGHOXpsaiZrf8ZyzzulkS/CxobR2EwlHD0LJiFOZFUFnqUm4rtWbtUEE86kAWvbpuntP4fBUKT4u/B1HWkTl4RVLIzXdd+XiEbAd42TgvhTZzpfE8Je4ZAt77KeRMluq23tJl34RdfsNpDB0sPQp1lZKqOTUVFUqqOhAKuxvdhzTgqy8KWotBaH7y0eqqllNREsaZptbLVpgbANouBssb7LG/IjO+6tZjqq/DXt+y4rLffkHCZN/YLdVpwESwHPSvg15I/e/c0Z5qnpbwa8jbvfuqUlVyHXzlb95ifrDzMze+FLRTU8U722ZjUHXTq2JPmqBwfKB55goAggggCJgggCCARUBMVBBAn4H+Rie6HtiVKnZLXRTAs1NjYVEZL9DEcU+mU9VGQlGFmUkEdBGyXG6qU+r/rf5oDVkXNBmnXsJDVIk1OuMZoM0dk0cZ4gtE3hEybUZMvNTNYGwOMTEgEqLrUUWu1JthAvzjYw61EoYJi0eidZNVMHpuimKoVgr5QErKM4K78lRLg3BJ6CL+aZnRXgVtUBxWKDIDcpTQqzDoLseL5gfNvnKdG6Wr4Zs2Hr1KRNrmm7JmtuzAGxHUZZY3XTSNVclTHVivOFbg7jdZslrjqMzpXS/CvrXQo4X91YMrchUqBLZaVFLWp3HxjYC3MAb75xOHBKgD7DPTHgzX+DfvT/AEqU856OwhqVVTmJux5lQbWY9AAvPTmo+CalgkzizVC1Ug7CA54gI5jky3HTeSqkax6Ap4ymEc5WW5RwAxUkWYFTsZTuKnf1EAjkGnPBxXpEkLZb/DRkdNu7iuyup6uMB0wQSDOjVti2UVRfyPm+FFjVVz/8g22+L07vjdUEEoSdVnAuagtYH4PMd3xuqJGrh+VHqH8UEEA6WrLNsWqD1ZLfS0ke4yt449A/HBBAaq6rOhs1QA+Tf6GjfudI31R6h/FBBAA1fPyo9Q/ikjF6JFRRwl2YD+YlkbKN2ZWNm9IMEECA+rG0Wq7D0oL/ADNDOqp+WHqf5QQQB7lf9Yf+v/KENVv9Yf8Ar/ygggKOqh+WHqf5SQNRqhFxUFj/AOC/jgggJqakOozNUAHkA/Q8Y9yZ+WHqf5QQQDXVE3sKwJ8j/KL9xj/K77fEHOLj43QIIICW1QIF+FFrA/A6RcfGkjAajvVICMznxVVEPpdwIIIHTNUPBstEh8SAACDwYbhC5G0cK9rWB+Iuw85O6dMggkH/2Q=='),
    Product(
        id: 2,
        brand: "Blast 5G",
        name: "Lava",
        Quantity: productList.length,
        price: 74999,
        link: 'https://m.media-amazon.com/images/I/51CS5pPGiCL._AC_UL320_.jpg'),
    Product(
        id: 3,
        brand: "7Pro",
        name: "Oneplus",
        Quantity: productList.length,
        price: 10999,
        link:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkTTibGfUFa4nqt6UZ3mZKmyFF8GC7tfskeg&usqp=CAU'),
    Product(
        id: 4,
        brand: "F5",
        name: "Poco",
        Quantity: productList.length,
        price: 10550,
        link:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR039y0hMoXn3bnV_BIvzzbF1MzwCXAgGs5Nw&usqp=CAU'),
    Product(
        id: 5,
        brand: "Xioame",
        name: "RedmiNote8",
        Quantity: productList.length,
        price: 40000,
        link:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJXOWS6P3a7reluDNy9AYJEmxQ-rqgzcmCrw&usqp=CAU'),
    // Product(
    //   id: 6,
    //   brand: "Xioame",
    //   name: "Redmi10",
    //   Quantity: productList.length,
    //   price: 15099,
    //   link: 'https://m.media-amazon.com/images/I/71BiCb7N5YL._SX679_.jpg',
    // ),
  ];

  var product = <Product>[].obs;

  void addToCart(String product) {
    cartproducts.add(product);
  }

  void removeFromCart(String product) {
    cartproducts.remove(product);
  }

  int get cartproductCount => cartproducts.length;
}
