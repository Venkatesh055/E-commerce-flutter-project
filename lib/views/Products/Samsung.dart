import 'package:flutter/material.dart';

class Samsung extends StatefulWidget {
  const Samsung({super.key});

  @override
  State<Samsung> createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  bool isChecked = false;
  late final String id;
  late final String name;
  late final double price;

  @override
  Widget build(BuildContext context) {
    final double checkBoxSize = 36.0;
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey.shade400,
            width: 300,
            height: 1200,
            child: Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                width: 290,
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.network(
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVEhgSEhIYGBgYGBgYGBgYGBgSGBgSGBgZGRgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QD00Py40NTEBDAwMEA8QGhISGDQjGSE0NDExPzExNDQ0MTQ0NDExMTE0NDE0NDQ0PzQ3MTExPzQxNDQ0NDExMTQ0NDQ1MTQxNP/AABEIAPcAzAMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xABKEAACAQICBAgHDQcEAgMAAAABAgADEQQSBQYhMRMiNEFRYXFzB1JygZGSshYjMkJTobG0wcPS4fAUFSQzs9HiY4Ki8WKTQ8Ly/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECAwT/xAAhEQEBAAIDAQACAwEAAAAAAAAAAQIRAxIxIUFhEyJxBP/aAAwDAQACEQMRAD8A6PrPrCuFSwymoQWAa+VEGwu9ttrmwA2sdg5yOUaT1tr1GJ4R32/HdkTzUkKqB23PXJOv+OZ8S+3YajL/ALKJ4NV7MwqN2tMtRpFja4AALMzGyqg3sx5gJRNOmH50T1Sftg/e7+InqfnKPEaYoqbIj1P/ACLCkD1quUm3aY7hcalTYl1bxGsb9OVha/YQDAtv3u/iJ6n5wfvd/ET1PzldDgWH73fxKfq/nB+938Sn6n5yuMECx/e7+JT9X84n96ve+RN1vg7PpkCCBYrpZybCmlzu4nP6YnSum0o8R1D1R8JEPBoh8V3HGZuoW64zgny562wmlTd1B8cCyf8AIiY83JJJuTtJO8k7yZZNi9OttX4tKiBzDI7fOXhe66t8nR9RvxyhyQcHL1Ta+919b5Oj6jfjgOt1b5Oj6h/FKHg4XBx1Nr8a3VRs4Ol6h/FB7r6vydL1D+KZ4pDSwIJW45xu+eTqrQ+6+r8nR9Q/ihe7Cr8nS9Q/imcO/Z/1CjQ0vuwrfJ0f/W34oXuwrfJ0fUb8czRhxoaT3YVvk6PqN+OP4fXeup+AgH/gatFvMyPsmUgkHcNTPCOXOSszMo2sHIaoic7qwA4RBzgjMBt27p1ZagIBG0EXBG0EHrnkPR2LalVSqp2owbtA3jsIuPPPT2pGIzYMLvFNnpqf9MHMg8yso80g5Jref4h9h2VMRv5/4ipumZ0xWK4UqPj1FVvJVcwHrEH/AGiafXDlDeXiPrFSZ3E0g9M02NrkEHxXF9p6iCQfN0SjP4dFINzY2uvWei/NE0yVdSNhv6DeOPhaimxS/Ru+bpk3B4Ag56p2/FUbYFq5ub+f0i80urOr1PEU2qVHcccoAhAy7AbtcHpmXB5zHqGJdL8HUdL7DlYrcddjtkstnwHi6OSo6Zs2R2W458pIv80aghSgQQoUB8N/D4nYf5Po98TfMwqzTpyfFdyPbWZymNg7BOnFN2s0SpF8HHVEcUT0TFNo3BQcFJypFcHNfxp2VjUY29KWxoxl6EzlxLMlS6WjdpZVaEh1KdpwywsWUxBDYQphRQQQSAx9hnprwd1P4Z+Kf5v3NGeZR9hnprUDkz96P6NGRXM9cOUN5eI+sVJQmXetVQPWzr8F2rMvNxWr1GBt2EShxGJ4Kk1UfDzBE58rkEs9ukAbOtgeaA5UpFPhsEvzM60yf9pIPzRHBW42++5rhwexheZrKz3ckk72Jux7WP2mP6PxZR7fFPwl5mH9+uBfQQPsNv1aFeAILwjBAEEKETAkpyfFdyP6izNK5sOwTSUuTYruR/UWZtE2DsE68PtZyAuemAMY5kihTno61CFc9Jj6V26ftiRThhJqSxEmnijzi/zSUjo3V2yvCxazpjamkupheiQK9Dqk/D1iOsdBkrg1cbN/RzzVwxyib0y9WjaRiJs8XqhjVQ1P2SsVAvcISbdOT4Vuu0rNFaq4vGXOEwzVFU2LXVEv0Z3IUnqBnh5MJPsrpKz0KWum9AYnCMExVB6ZO4kAq3TlZSVbzGVdpxUPznprUDkz96P6NGeZR/eeitTtOUcPQZKzEMXDDYTdeCpC97dKmSq5xpo7KXkN7byi0nTL0SBvRs9ulSMreji/PLzTR2UvIb23lVfoO3pgZyhVynbu5xtsRe9iBzR7C0DUe6jYNpO4dQ/KWlTCoTc0x5jYeggx1RsygBV6B/1AXfo83YNkK8F4RMA7wrwQoB3hEwrwrwJVPk+K7kf1FlHRXijsH0S7on+HxXcj+osqcOvFXsH0Tvwe1mgEjipHFSPKk9sjJgJFCnJK046tONQQxShilJwpRQozXVUFac2/gt0ctTHF3APBIXUHaM5ZVU+YEntseaZfgZe6maXGDxQqMCUZSj22kISCGA57EDzXmOXHLpZPSRvDr5bHnCGiMgq8DnzHNnzZC1rWtm5ujb1Q9fNZzo2lTXDUEL1WqEZlIpqAQzsVUglmap0jex7cXrhj6DY81sJl2ZGLqcyvXHGzgHZs4o6yDIemNJ18WFOIfPlDBeKiWDWv8EDxR6Jxx/55l1utTX1bbG0xuMXS2gK1arSCutOq1htC16AYhkJ2gG3oYjbPPU7ZpjWjDUNCfsmHUJUqI1DgwSSub+bUYnaQwYkHeS1uY24xVSxnmywst+aXZof3nVavN5K+yJyoD7Z1SrzeSvsic1Vemt1LyG9t5W3UKzuSEQXa3wiSbKq3+MT9p5pZ6dBHBgixCuCDsIIqOCCO2Z/S5PAADdwlz6hy3/5QI1fTTk+9qiDmAVXNut2BJj+C0jnORwoJ3Moyi/QwGy3WLStwxXaCt7i1/FPM1ufsjaD3wAdP/cDQnZBeBztPmv22F4m8AyYV4V4V4AvATChEwJdHk+K7ke2sgYVOIvkj6JOocnxXcj+osj4Nfe08lfoE78F+1KcRJIRIaJH0SersmiUSOpTjqJH0SXsaMpSi1pSSlOPJTjsukMUZfanaDXEYkLUF0RS7L41iAqnqubnqEhLSmh1Lxa0cTxzYOpTMdgDXBUk8w2W88xyZ3rdemmqbTmC4Y4Equ/g7FF4LNuyenZutfZMbrZq4MLUD0h7y5sBvyPvKX6DtI7COaSdddCrSrcIrX4UsxTnDXuxv0Ek/PL3QGk6eMw5wuK2vbLtNjUUbmB8cW29Yv2cMb0kyxvz8rpEp4W+gKqC1zQxABPW1S15wDEpvBG0fTPTGkdHihoytRUlgtKrYm1zfM223bOA6w4WzioNz7/LH9xt9MuE7Y5Zftm/Ky5E6nV5vJX2ROX1F2mdYpYOpUGanTZgAoJANg2RTb0EemefKarSt1z5S3l4j6xUmecAgqwup3jn2biOsf3mg1za+JYjx6/o/aKkz5kFW+izfiOCO0A+gkGS8Lhkp7Rx3PPzD0R8iFAMQRN4IB3hEwrwoAvChGC8CZQ5Piu5HtrEYFfe08hfoEVhuT4ruR7axeAX3tPIX2ROvDftEpFklEjaLJVNJ37LopEkhEhIklIkdl0SqR9Ui0SPoknY0QiSdozRrVqi012X3nflUbz+uqNIk0upoArv05Db1lvMZZagp9O6OelVyOxZQoyMxueDubDqsb7Jc6K1QRqYfEFgzAEKpC5RzXNt/0Q62iqlTGtnRshfMWIOXgxuF924AWj2uWIuVog7AM7DpO5b+hvSJzuVupKiLp7Qj0U4SnWqOg2OjuWsp2X6Cu4Wt+XL9PYTiVKfi8dPNxgPRcTsmEVho1hUv/LqWvvyENl+a1vNOY6bSzI/SCp820fSfROvBl7jUs+OW1xPSng75M/ej+jRnnLSVLJUdPFZgOzm+a09FeD+qBhnFx/MHR8jRnHl9SOSafO2n5De28qLy20/vp+Q3tvKiYUd4UIwrwDJhXhXhXgHeFeFeAwBeAwrwoE3C8nxXcj+osf0cPe08hfZEYwvJ8V3Q9sSXo0e9p5CeyJvj9qxOprJVNIzTWTKazpto5TWS6aRumklU1k2FokeRIEWPosmwSJJOEqsjh1NmU3H0EHqiVWOKsmxoRrMcv8rjeVxb9O68pK9dnc1GN2JB3XGzcLHm2bpPoaGd6S1EIN78U8U7CRsO47uqQ62HZDldSp6xb0dMzNJEnTWmjVorTVct7F+i4+KOq+30THabp3pX8V1PpuPtl7WWVWll95f/AG+2s3hdZRbP61yzWZLV2PjKrfNl/wDrN/fYPJX2RMTravvinpQD0M395teYeSvsiTl9c4rNcaYXEFFFlV6yqOhVr1AB6AJniZotduVN5eI+sVJnCZzUZMImJJgvAVE3hXgvABMK8ImFeAq8KFBAnYTk+K7oe2JYaLX3pPIT2RK7CH+HxXdD2xLTRQ96p+QnsiaxWLGksl0ljFJZMpLN2tHqayXTWM0xJKCY2p1BH0WIQR5BCFqIsCEoiwIEzBaSqUxZWuvisLj+4l3g9KLW4j0jc79mde07NkjaM0ZSNMVah2G+wnKosSNp590fraZpoMtFQbdAyr+czWScbq6jbabFD0b1/uJkdYdEVqVGoXS67OMvGW2YbTzjzy1xml6zHNwhW24LxR6Ofz3kPSusjthno1FDZ1KBxxSCecjcd3Naax3uL9047rf8NepPpZp2bUjRdCth2arTzEVAAbnYvA0jbf0k+mcY1rN3PUFH2/bO7+Djkr979zRl5PWXKNeD/FN5eI+sVJmyZoteD/FN5eI+sVJnLzABhQEwrwDhQrwrwDhQXhEwBeCCFeBPwnJ8V3Q9sS30UPeafkJ7IlPg+T4ruh7Yl1ooe80/IT2RNYrFpSEmUhItMSZSEtaSaYklBGKckoJA8oj6CMrH0EiU4oiwIhY4JUXNDRnC4dGVrMM2wm6njHm5jKtsOwfJkObxbbf+uuS9DCtm963fGv8AA8/X2bZqOLm5s1uq9vptJvQzdXQ608O9SoQXynKL8VSRs7TMFpWpuHaf7TX6z8PmvV+BfiZb5f8A9dswGmcRZWbzD6J04592MTp6pmLnpPzX2Tvvg45K/e/c0Z570q2wz0F4OOSv3v3NGY5PUcn145W3l4j6xUmcJmi165W3l4j6xUmbvMgQQrwjAMQoIUA4kwXgvAK8EIwQLDB8nxXdL7Yl9oge80/IT2RKDBcnxXdL7Yl/on+TT8hPZE1isWtKS6YkWlJlOWrtJpySkj05ISRUhI6saSOrDJ1Yq8bBgLQi7o6W4PDqqC7ca5tsW7H0mU9TEvnz5mzb83P+uqafQFcfs4uCAt7sbAHaWJHULyPU1pohrZXK+NYemxN7ST/BW4nWAPhatOqLOUYK1uK5ts7G+b6JyXTuJu2QHdv7T+vnnZ9bNKKmjqlZAXVkKgrY2z8UMwO5QSAecTz9jKxJJJ2nb5514/KKzSD3BnojwcckfvfuaM84Ypr3no/wb8kfvfuaM55+pHJNej/Fv3mI+sVJm7zSa9crfvMR9YqTNGZUcImCJvAF4ILwoAh3hQQBBBeFAn4Hk+J7oe2JoNEn3mn5CeyJn8DyfFd0vtiXeim95p+QnsibwguqRkylK+k8l0nm7DaehklDIVN5IR5nRtLVo6rSKrxQeTQk5oTPGC8bZ+iNI2WGQ1NH5U+FlYW6WDEkef7ZhcZXy3vstvvstbfeWmidOthyboWQ7WXcQfGU9NpZVde8CDnanULj/QLNcdDbvniSy+bCMhpaErnEKVzUa7BW2MA4YICDuYkg23gtbfOB4mpNzr9rrVxq8ElJ6WHUhiGF3dhtUuRsUDflBO3bfdbndV50xlktv5S0zVO+ekvBvyR+9+5ozzUxnpTwcckfvfuaM4536scl175W/eYj6xUmavNJr3yt+8xH1ipMzIo4UMmFABghXggCCFCvAO8EKCBYYHk+J7pfbEs9GPaknkJ7IlXgeT4nul9sSTganETyF+gTrwzdqVf06kmUqkpKdaSaded7im12lWSVqykTESQmImLgbXC1orhpUjEQziZnqbWbV5P0Fp+nhnd6oYhlyjLa9735yJlKuOtu/KVmJxRO8zU49m3UavhOwq76Nb0U/wAch1fC7g130K/opfbUlj4ONIj92gupRKJqZqjlVRhnd2ZdvwVDWJNtoPRK+r4XcCtTIKddkvbhAigW6QpYNbzX6py1N2THev2ql1k8K2Er4Svh0oVw1Wk6KWFPKGdSATZybbeicacz0hr3ppToirWoq1alWpMoenlIVailVdgSDlBNjbaOcb7ebWMTKaupoEZ6V8HHJH737mjPNM9LeDfkj979zRmKrkmvh/jH7zEfWHmZmk185W/eYj6xUmakB3hQoIAjeY7f1zxy8K8Bssf107oMx2frnjl4UBvOf12wyxt6YuCBPwB94xXdr7YjeGqcRewfRHMB/IxXdr7YkWgeKOwfRO/B7Waskrx9K8rkO6Poebr/ACnr1GFilfrjyYmVym1tu3YRz+aOcINmztts6hs6d/nk6xdrEYroI9MQ1fptIIqbj6dnbs2c9+aNPU6D/wB+aTUNpdXESHUrRmpWkSrVi/B2rRmHbE6tGlhtrmk65RsLOlVi69rWI/3ThNdiGKkEMCQVIsQw2EEHaDfmmu1H17fRzMjKalBzmdAbMr2AzoTsvYAEHYbDdOnYjX3Rq2xFbD1UqWBBqYUrUB5gHItf/daeS5XC2fita2h6EwL4bVmsmKBUtQxDZW2FRUDZFIO4kkG28FpwMTf+EDwitpBf2ejTNLDhgxDEZ6jDdntsCg7coJ2gG+62AvOcUU9LeDfkj9791SnmmelfBvyR+9+6pSVXJNfeWP3mI+sPM1NJr6f4x+8xH1h5mYAvBCggCCCCAIImCAIqJhiBYYD+Riu7X2xINA7B2fZJuCYChieumPbErqZ2DsE68N1azUtH3fq8fV+b9XkNWjmaemZM6TVbm/Pq3Qg/5827d1dMiF+nfEmrs/XbHc0mGp+txP62xl63XI1Sr+vNI71Jm5ro+9aTdWtDvjcXTwqG2Yku1r5aai7t6Ng6SQJSs86X4CQv7fWJtmGHOXpsaiZrf8ZyzzulkS/CxobR2EwlHD0LJiFOZFUFnqUm4rtWbtUEE86kAWvbpuntP4fBUKT4u/B1HWkTl4RVLIzXdd+XiEbAd42TgvhTZzpfE8Je4ZAt77KeRMluq23tJl34RdfsNpDB0sPQp1lZKqOTUVFUqqOhAKuxvdhzTgqy8KWotBaH7y0eqqllNREsaZptbLVpgbANouBssb7LG/IjO+6tZjqq/DXt+y4rLffkHCZN/YLdVpwESwHPSvg15I/e/c0Z5qnpbwa8jbvfuqUlVyHXzlb95ifrDzMze+FLRTU8U722ZjUHXTq2JPmqBwfKB55goAggggCJgggCCARUBMVBBAn4H+Rie6HtiVKnZLXRTAs1NjYVEZL9DEcU+mU9VGQlGFmUkEdBGyXG6qU+r/rf5oDVkXNBmnXsJDVIk1OuMZoM0dk0cZ4gtE3hEybUZMvNTNYGwOMTEgEqLrUUWu1JthAvzjYw61EoYJi0eidZNVMHpuimKoVgr5QErKM4K78lRLg3BJ6CL+aZnRXgVtUBxWKDIDcpTQqzDoLseL5gfNvnKdG6Wr4Zs2Hr1KRNrmm7JmtuzAGxHUZZY3XTSNVclTHVivOFbg7jdZslrjqMzpXS/CvrXQo4X91YMrchUqBLZaVFLWp3HxjYC3MAb75xOHBKgD7DPTHgzX+DfvT/AEqU856OwhqVVTmJux5lQbWY9AAvPTmo+CalgkzizVC1Ug7CA54gI5jky3HTeSqkax6Ap4ymEc5WW5RwAxUkWYFTsZTuKnf1EAjkGnPBxXpEkLZb/DRkdNu7iuyup6uMB0wQSDOjVti2UVRfyPm+FFjVVz/8g22+L07vjdUEEoSdVnAuagtYH4PMd3xuqJGrh+VHqH8UEEA6WrLNsWqD1ZLfS0ke4yt449A/HBBAaq6rOhs1QA+Tf6GjfudI31R6h/FBBAA1fPyo9Q/ikjF6JFRRwl2YD+YlkbKN2ZWNm9IMEECA+rG0Wq7D0oL/ADNDOqp+WHqf5QQQB7lf9Yf+v/KENVv9Yf8Ar/ygggKOqh+WHqf5SQNRqhFxUFj/AOC/jgggJqakOozNUAHkA/Q8Y9yZ+WHqf5QQQDXVE3sKwJ8j/KL9xj/K77fEHOLj43QIIICW1QIF+FFrA/A6RcfGkjAajvVICMznxVVEPpdwIIIHTNUPBstEh8SAACDwYbhC5G0cK9rWB+Iuw85O6dMggkH/2Q==',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Text('About this items',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Supports for all india 5g brands',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '6.8 Dynamic 2x infinity',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Low ligth Camara Action',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '800 Morethen Snapdrogen',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_outlined,
                            size: 20, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mediatak Dimensity 900process',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Container(
                      width: 700,
                      child: Text(
                        'Samsung Galaxy S23 Ultra 5G',
                        style: TextStyle(
                            fontSize: 30,
                            backgroundColor: Colors.amber[50],
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 19, 27, 39)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text(
                                  'visit the Xiaomi Store',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 71, 69, 69),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    for (var i = 1; i < 6; i++)
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 250, 232, 75),
                                      ),
                                    Icon(
                                      Icons.star_border_purple500_outlined,
                                      color: Color.fromARGB(255, 250, 232, 75),
                                    ),
                                    Text(
                                      'for Rating MI....',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.black),
                                child: Center(
                                  child: Text(
                                    'AmazonChoice',
                                    style: TextStyle(color: Colors.amber[100]),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Text(
                                    '- 17%',
                                    style: TextStyle(
                                        letterSpacing: 1,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '1,24,999 /-',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '1,49,999',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[700]),
                              ),
                              SizedBox(height: 120),
                              Padding(
                                padding: const EdgeInsets.only(left: 60.0),
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0.16,
                                        primary:
                                            Color.fromARGB(255, 255, 252, 75),
                                        onPrimary:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        padding: EdgeInsets.all(16.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                      ),
                                      child: Text(
                                        'Add To Cart',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 45,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right,
                                    color: Colors.green,
                                  ),
                                  Text(
                                      '87% positive rating from 100K customers'),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right,
                                    color: Colors.green,
                                  ),
                                  Text('10K recent orders from this brand'),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right,
                                    color: Colors.green,
                                  ),
                                  Text('9+ years on Amazon'),
                                  SizedBox(
                                    width: 100,
                                    height: 30,
                                  ),
                                ],
                              ),
                              SizedBox(height: 90),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 250,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 15.0,
                                            spreadRadius: 5.0,
                                            offset: Offset(5.0, 5.0),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.green[100],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, right: 60),
                                            child: Text(
                                              'Add a Production Plan :',
                                              style: TextStyle(
                                                  color:
                                                      Colors.blueGrey.shade600,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Transform.scale(
                                                scale: checkBoxSize / 50.0,
                                                child: Checkbox(
                                                    value: isChecked,
                                                    onChanged: (newValue) {
                                                      setState(() {
                                                        isChecked = newValue!;
                                                      });
                                                    }),
                                              ),
                                              TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                      '1 Year Total Production Plan')),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'for',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text('6,999.00 /-',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 13))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.blue,
                                              onPrimary: Colors.grey[50],
                                              padding: EdgeInsets.all(16.0),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0)),
                                            ),
                                            child: Text(
                                              'Buy Now',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.lock_person,
                                                size: 25,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5.0,
                                                ),
                                                child: TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                        'Secure Transaction')),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 350,
                  color: Colors.white12,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 30),
                        child: Row(
                          children: [
                            Text(
                              'Brand',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              'Samsung',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Network',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Unlock Carriers',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Model Name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'GalaxyS23 Ultra',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'OperatingSystem',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Android 13.0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Cellular Technology',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '5 G',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Resolution',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '3400*1080',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Battery Level',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '5000mAH',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 1, left: 25),
                        child: Row(
                          children: [
                            Text(
                              'GPS',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'True',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  width: 250,
                  height: 200,
                  child: Image.network(
                    'https://media.istockphoto.com/id/1007848764/vector/video-on-mobile-screen-video-sharing-and-marketing-flat-vector-concept-with-icons.jpg?s=612x612&w=0&k=20&c=iu263H6ut0ejQEt6ue9fzIX4XKQRGzPXKhDyZh7xp-M=',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
