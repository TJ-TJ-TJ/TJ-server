/*
 Navicat Premium Data Transfer

 Source Server         : 远程 mongoDB
 Source Server Type    : MongoDB
 Source Server Version : 40025

 Date: 28/06/2021 17:06:24
*/


// ----------------------------
// Collection structure for detail
// ----------------------------
db.getCollection("detail").drop();
db.createCollection("detail");

// ----------------------------
// Documents of detail
// ----------------------------
db.getCollection("detail").insert([ {
    _id: ObjectId("60c164a7074200005d003192"),
    "r_name": "天安门西客站万寿路五棵松301温大3居室",
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311372140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311447584_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312248918_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312151027_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311384624_700_467.jpg"
            ]
        },
        {
            "class_name": "客厅",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311372140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311447584_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312248918_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312151027_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311384624_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141313112842_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141313158778_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312456742_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312288527_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312335824_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341574465_700_467.jpg"
            ]
        },
        {
            "class_name": "其他",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ]
        }
    ],
    star: 3,
    price: 618,
    "new_price": 618,
    label: {
        base: [
            "实拍",
            "可做饭",
            "宽松取消",
            "行李寄存",
            "立即确认"
        ]
    },
    params: {
        house: 3,
        bed: 3,
        "person_count": 6,
        area: 128,
        attr: "单间"
    },
    nearby: "近地铁站.距离良乡大学城西地铁站直线距离1.2km，驾车约3min",
    location: "丰台区, 北京丰台区京铁家园1区2号楼(整租3居室)",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "丰台区",
    "con_title": "天天特惠",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: false
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: false
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: true
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: true
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: true
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: true
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: false
            },
            {
                name: "火灾警报器",
                support: false
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        sid: "1763883809",
        uname: "五棵松温馨民宿",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_190503/thumb/201905031855393546_90_90.jpg"
    },
    discuss: [
        {
            uname: "C***8",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": ISODate("2021-05-29T00:00:00Z"),
            score: 5,
            content: "挺好的，挺好的"
        },
        {
            uname: "sc**7",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": ISODate("2021-05-29T00:00:00Z"),
            score: 5,
            content: "挺好的，挺好的"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 2,
            text: "提前1天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: false
                },
                {
                    item: "带宠物",
                    support: false
                },
                {
                    item: "吸烟",
                    support: false
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: true
                }
            ],
            explains: "标准入住2人，不可加人"
        }
    },
    circum: {
        traffic: [
            {
                item: "北京西站",
                distance: "3.4km",
                duration: "驾车约12min"
            },
            {
                item: "六里桥长途客运站",
                distance: "2.7km",
                duration: ""
            },
            {
                item: "莲花池长途汽车站",
                distance: "3km",
                duration: ""
            }
        ],
        sights: [
            {
                item: "乐视体育生态中心南广场",
                distance: "1.6km"
            },
            {
                item: "北京时代美术馆",
                distance: "1.8m"
            },
            {
                item: "北京育英学校",
                distance: "1.9km"
            }
        ],
        repast: [
            {
                item: "北京西站南广场",
                distance: "3.5km"
            }
        ],
        shop: [
            {
                item: "西点百货",
                distance: "1.8km"
            },
            {
                item: "凯德晶品购物中心",
                distance: "2km"
            },
            {
                item: "北京银座和谐广场",
                distance: "2.1km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c164ac074200005d003193"),
    "r_name": "北京晓晓家家庭公寓1",
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025239157_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025284587_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025226695_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025238611_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025227807_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025211973_700_467.jpg"
            ]
        },
        {
            "class_name": "其他",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025505444_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025313729_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025506847_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025494858_700_467.jpg"
            ]
        }
    ],
    star: 2,
    price: 428,
    "new_price": 376,
    label: {
        base: [
            "实拍",
            "可做饭",
            "近地铁",
            "立即确认"
        ]
    },
    params: {
        house: 1,
        bed: 1,
        "person_count": 2,
        area: 45,
        attr: "单间"
    },
    nearby: "近地铁站.距离角门东地铁站直线距离723m，步行约12min",
    location: "丰台区, 北京丰台区马家堡东路121号院(2号)",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "丰台区",
    "con_title": "天天特惠",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: false
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: false
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: true
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: true
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: true
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: true
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: false
            },
            {
                name: "火灾警报器",
                support: false
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "沅娜",
        img: "\thttps://pic.tujia.com/upload/customeravatar/day_190715/thumb/201907152230156990_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "sdf*",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": ISODate("2020-05-29T00:00:00Z"),
            score: 4.8,
            "img_list": [ ],
            content: "入住了四天，住得非常舒适。第一，房子房东布置得很温馨，也比较新，很多小细节比如舒适的床品、暖心床头灯还有花草盆栽点缀等等都彰显其用心。第二，我个人有点小洁癖非常注重的卫生问题，一进房就能感受到房东很用心做的卫生，没有觉得是马虎打扫的那种。第三，地理位置也还不错，楼下就有便利店 吃饭的门店还有公交站，马路对面有永辉，里面也有吃饭的。整体挺不错的，比住酒店舒心，下次有机会再来还会想入住这里哦😊"
        },
        {
            uname: "sc**7",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": ISODate("2020-09-29T00:00:00Z"),
            score: 5,
            "img_list": [ ],
            content: "挺好的，挺好的"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: true,
            text: " 100元，离店后原路退还"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 3,
            text: "提前14天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: false
                },
                {
                    item: "带宠物",
                    support: true
                },
                {
                    item: "吸烟",
                    support: true
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: false
                }
            ],
            explains: "标准入住2人，不可加人"
        }
    },
    circum: {
        traffic: [
            {
                item: "角门东地铁站",
                distance: "724m",
                duration: "步行约12min"
            },
            {
                item: "南苑机场",
                distance: "5.4km",
                duration: null
            },
            {
                item: "木樨园长途汽车站",
                distance: "2.1km",
                duration: null
            }
        ],
        sights: [
            {
                item: "北京京剧院",
                distance: "1.5km"
            },
            {
                item: "万芳亭",
                distance: "2.3km"
            },
            {
                item: "世界花卉大观园",
                distance: "2.5km"
            }
        ],
        repast: [
            {
                item: "海慧寺羽绒批发一条街",
                distance: "1.9km"
            },
            {
                item: "六合虹达上下床上下铺批发零售",
                distance: "3km"
            },
            {
                item: "丰泽园",
                distance: "3.6km"
            }
        ],
        shop: [
            {
                item: "星光广场",
                distance: "285m"
            },
            {
                item: "银泰百货(北京大红门店)",
                distance: "614m"
            },
            {
                item: "彪马(福成服装大厦)",
                distance: "2.1km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c164b1074200005d003194"),
    "r_name": "近北京南站4号线新宫地铁长住优惠单人优惠",
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "\thttps://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041750128959_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041749594785_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210222/thumb/202102221828256437_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041750128959_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946224875_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946303193_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946497443_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946179991_700_467.jpg"
            ]
        }
    ],
    star: 2,
    price: 138,
    "new_price": 138,
    label: {
        base: [
            "宽松取消",
            "行李寄存",
            "立即确认"
        ]
    },
    params: {
        house: 2,
        bed: 1,
        "person_count": 2,
        area: 20,
        attr: "单间"
    },
    nearby: "近机场.距离南苑机场直线距离2.4km",
    location: "丰台区, 北京丰台区诚苑中里(南门)(进小区门口直走一百米又转直行一百米就到了。)",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "丰台区",
    "con_title": "天天特惠",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: false
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: false
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: false
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: true
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: false
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: true
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: true
            }
        ],
        house: [ ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: true
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: false
            },
            {
                name: "火灾警报器",
                support: false
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "4号线新宫地铁附近独立大单间长租优惠",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_191102/thumb/201911021647249675_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "1***9",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": ISODate("2020-05-29T00:00:00Z"),
            score: 4.8,
            "img_list": [ ],
            content: "挺好的，房东姐姐还帮我搬行李"
        },
        {
            uname: "sc**7",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": ISODate("2020-09-29T00:00:00Z"),
            score: 5,
            "img_list": [ ],
            content: "挺好的，挺好的"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: true,
            text: " 100元，离店后原路退还"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 2,
            text: "提前1天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: false
                },
                {
                    item: "带宠物",
                    support: true
                },
                {
                    item: "吸烟",
                    support: true
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: false
                }
            ],
            explains: "标准入住2人，不可加人"
        }
    },
    circum: {
        traffic: [
            {
                item: "角门东地铁站",
                distance: "724m",
                duration: "步行约12min"
            },
            {
                item: "南苑机场",
                distance: "5.4km",
                duration: null
            },
            {
                item: "木樨园长途汽车站",
                distance: "2.1km",
                duration: null
            }
        ],
        sights: [
            {
                item: "北京京剧院",
                distance: "1.5km"
            },
            {
                item: "万芳亭",
                distance: "2.3km"
            },
            {
                item: "世界花卉大观园",
                distance: "2.5km"
            }
        ],
        repast: [
            {
                item: "海慧寺羽绒批发一条街",
                distance: "1.9km"
            },
            {
                item: "六合虹达上下床上下铺批发零售",
                distance: "3km"
            },
            {
                item: "丰泽园",
                distance: "3.6km"
            }
        ],
        shop: [
            {
                item: "星光广场",
                distance: "285m"
            },
            {
                item: "银泰百货(北京大红门店)",
                distance: "614m"
            },
            {
                item: "彪马(福成服装大厦)",
                distance: "2.1km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c1654f074200005d003195"),
    "r_name": "可看西山.南向.超大落地窗.浴缸房",
    star: 2,
    price: 568,
    "new_price": 511,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936119684_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031935268795_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936084288_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936091136_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936084942_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936097104_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936093093_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936107194_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936119684_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031937135493_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031937138241_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004107976_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004101235_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004105108_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004101955_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004104822_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004111270_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "端午力推",
            "超赞房东",
            "行李寄存",
            "有停车位",
            "近地铁",
            "立即确认"
        ],
        play: [
            "超大落地窗",
            "有浴缸",
            "有麻将机"
        ]
    },
    params: {
        attr: "实拍·整套",
        house: 1,
        bed: 3,
        "person_count": 2,
        area: 40
    },
    nearby: "",
    location: "海淀区, 北京海淀区永泰·自在香山10号楼    ",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "海淀区",
    "con_title": "天天特惠",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: false
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: false
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: true
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: true
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: true
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: true
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "田田的小屋",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_190702/thumb/201907022107568967_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "",
            "order_time": 1623287119365,
            score: 4.9,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 3,
            text: "提前14天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: true
                },
                {
                    item: "带宠物",
                    support: false
                },
                {
                    item: "吸烟",
                    support: false
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: false
                },
                {
                    item: "商业拍摄",
                    support: true
                }
            ],
            explains: "标准入住2人，可加1人，无需额外费用提前联系入住时间,安排接待.使用橱房及卫生间时请尽量及时擦试水渍,以免将地板浸泡.注意用水用电安全,降低噪音以免影响邻居休息.给您一个家的环境,希望您也像自己家里一样爱护我们的房子!."
        }
    },
    circum: {
        traffic: [
            {
                item: "丰台西站",
                distance: "15.6km",
                duration: ""
            },
            {
                item: "北京西站",
                distance: "11.9km"
            },
            {
                item: "北京北站",
                distance: "11km"
            }
        ],
        sights: [
            {
                item: "北京香山国际高尔夫俱乐部",
                distance: "1.2km"
            },
            {
                item: "中国科学院植物研究所北京植物园",
                distance: "2.4km"
            },
            {
                item: "北京西山国家森林公园(昌华园区)",
                distance: "2.6km"
            }
        ],
        repast: [
            {
                item: "平庄郊野公园管理处",
                distance: "3.5km"
            }
        ],
        shop: [
            {
                item: "老六蔬菜水果粮油",
                distance: "1.6km"
            },
            {
                item: "枫叶阳光商厦",
                distance: "1.8km"
            },
            {
                item: "西山商业大厦",
                distance: "2.5km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c16556074200005d003196"),
    "r_name": "八大处整形医院 精装复试一居室 周边完善",
    star: 3,
    price: 568,
    "new_price": 511,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626497200_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626497675_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626509269_700_467.jpg"
            ]
        },
        {
            "class_name": "客厅",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626011025_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013048_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626021856_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "优选",
            "超赞房东",
            "行李寄存",
            "有停车位",
            "宽松取消",
            "立即确认"
        ],
        play: [ ]
    },
    params: {
        attr: "实拍·整套",
        house: 1,
        bed: 1,
        "person_count": 2,
        area: 39
    },
    nearby: "",
    location: "石景山区, 北京石景山区启迪香山(启迪香山香山南路105号，麦当劳，国家射击场，检查官学院)",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "海淀区",
    "con_title": "天天特惠",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: false
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: false
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: false
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: false
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: false
            },
            {
                name: "刀具菜板",
                support: false
            },
            {
                name: "烹饪锅具",
                support: false
            },
            {
                name: "电磁炉",
                support: false
            },
            {
                name: "燃气灶",
                support: false
            },
            {
                name: "调料",
                support: false
            },
            {
                name: "洗涤用品",
                support: false
            },
            {
                name: "电饭煲",
                support: false
            },
            {
                name: "烧烤器具",
                support: false
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: true
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "启迪香山公寓",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_200201/thumb/202002011719485540_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "",
            "order_time": 1623287126101,
            score: 4.9,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 3,
            text: "提前14天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: false
                },
                {
                    item: "带宠物",
                    support: false
                },
                {
                    item: "吸烟",
                    support: true
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: false
                }
            ],
            explains: "标准入住2人，可加1人，无需额外费用提前联系入住时间,安排接待.使用橱房及卫生间时请尽量及时擦试水渍,以免将地板浸泡.注意用水用电安全,降低噪音以免影响邻居休息.给您一个家的环境,希望您也像自己家里一样爱护我们的房子!."
        }
    },
    circum: {
        traffic: [
            {
                item: "西黄村地铁站",
                distance: "1.3km",
                duration: "6min"
            },
            {
                item: "北京西站",
                distance: "11.4km"
            },
            {
                item: "丰台西站",
                distance: "12.7km"
            }
        ],
        sights: [
            {
                item: "北京射击馆",
                distance: "487m"
            },
            {
                item: "八大处甲7号院",
                distance: "1.5km"
            },
            {
                item: "紫金阁禅修院",
                distance: "1.6km"
            }
        ],
        repast: [
            {
                item: "平庄郊野公园管理处",
                distance: "3.1km"
            },
            {
                item: "八角文化广场",
                distance: "3.3km"
            },
            {
                item: "阿迪达斯(星座商厦店)",
                distance: "4.3km"
            }
        ],
        shop: [
            {
                item: "西下庄菜市场",
                distance: "380m"
            },
            {
                item: "八大处综合市场",
                distance: "543m"
            },
            {
                item: "龙海天一市场中心",
                distance: "586m"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c1655a074200005d003197"),
    "r_name": "三山五园北欧风情屋",
    star: 3,
    price: 398,
    "new_price": 358,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg"
            ]
        },
        {
            "class_name": "客厅",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626011025_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013048_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626021856_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626497200_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626497675_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626509269_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "超赞房东",
            "立即确认",
            "行李寄存",
            "有停车位",
            "免费停车"
        ],
        play: [
            "北欧风",
            "有麻将机"
        ]
    },
    params: {
        attr: "实拍·整套",
        house: 1,
        bed: 2,
        "person_count": 2,
        area: 38
    },
    nearby: "",
    location: "北京海淀区北京市北京海淀区 瀚河园路自在香山(10号楼)",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "海淀区",
    "con_title": "优选pro",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: true
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: false
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: false
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: false
            },
            {
                name: "刀具菜板",
                support: false
            },
            {
                name: "烹饪锅具",
                support: false
            },
            {
                name: "电磁炉",
                support: false
            },
            {
                name: "燃气灶",
                support: false
            },
            {
                name: "调料",
                support: false
            },
            {
                name: "洗涤用品",
                support: false
            },
            {
                name: "电饭煲",
                support: false
            },
            {
                name: "烧烤器具",
                support: false
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: false
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "田田的小屋",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_190702/thumb/201907022107568967_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": 1623287130403,
            score: 4.9,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 3,
            text: "提前14天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: true
                },
                {
                    item: "带宠物",
                    support: true
                },
                {
                    item: "吸烟",
                    support: false
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: true
                }
            ],
            explains: "标准入住2人，可加1人，¥100/人/晚1、进小区访客需预约，所以请到达之前告知房东；请从北门进来；2、北门口有家农夫山泉芝麻店，新用户购水非常超值，入住几天的饮用水，大概9.9元就能搞定；3、入住时请向房东索要房门、大门、小区门禁及钥匙；4、窗帘为电动，可用遥控器，如不会请咨询房东。祝您入住愉快！"
        }
    },
    circum: {
        traffic: [
            {
                item: "万安地铁站",
                distance: "1.3km",
                duration: "22min"
            },
            {
                item: "茶棚地铁站",
                distance: "1.4km",
                duration: "10min"
            },
            {
                item: "清河站",
                distance: "10km",
                duration: "8min"
            }
        ],
        sights: [
            {
                item: "北京香山国际高尔夫俱乐部",
                distance: "1.2km"
            },
            {
                item: "中国科学院植物研究所北京植物园",
                distance: "2.4km"
            },
            {
                item: "北京西山国家森林公园(昌华园区)",
                distance: "2.6km"
            }
        ],
        repast: [
            {
                item: "平庄郊野公园管理处",
                distance: "3.5km"
            }
        ],
        shop: [
            {
                item: "达美乐新鲜专卖店",
                distance: "1km"
            },
            {
                item: "香山",
                distance: "1.3km"
            },
            {
                item: "老六蔬菜水果粮油",
                distance: "1.6km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c16562074200005d003198"),
    "r_name": "近八一制片厂西站肿瘤医院莲花池自然原宿",
    star: 5,
    price: 600,
    "new_price": 570,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg"
            ]
        },
        {
            "class_name": "客厅",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062358069734_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062358189170_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062359004921_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062359418780_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070001445143_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070002113495_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070004538353_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070002544075_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070003245515_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070003581639_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070006566135_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "实拍",
            "优选",
            "可做饭",
            "宽松取消",
            "立即确认"
        ],
        play: [ ]
    },
    params: {
        attr: "实拍·整套",
        house: 2,
        bed: 2,
        "person_count": 4,
        area: 68
    },
    nearby: "",
    location: "海淀区, 北京海淀区莲宝路10号院-9号楼",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "天天优惠减30",
    city: "海淀区",
    "con_title": "优选pro",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: true
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: false
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: false
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: false
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: false
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "北京--之家",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_200803/thumb/202008031006479487_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": 1623287138450,
            score: 4.6,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 2,
            text: "提前7天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: false
                },
                {
                    item: "带宠物",
                    support: false
                },
                {
                    item: "吸烟",
                    support: false
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: true
                }
            ],
            explains: "标准入住2人，可加1人，¥100/人/晚1、进小区访客需预约，所以请到达之前告知房东；请从北门进来；2、北门口有家农夫山泉芝麻店，新用户购水非常超值，入住几天的饮用水，大概9.9元就能搞定；3、入住时请向房东索要房门、大门、小区门禁及钥匙；4、窗帘为电动，可用遥控器，如不会请咨询房东。祝您入住愉快！"
        }
    },
    circum: {
        traffic: [
            {
                item: "六里桥地铁站",
                distance: "1km",
                duration: "10min"
            },
            {
                item: "六里桥长途客运站",
                distance: "1.4km",
                duration: ""
            },
            {
                item: "六里桥地铁站",
                distance: "1km",
                duration: "10min"
            }
        ],
        sights: [
            {
                item: "八一电影制片厂",
                distance: "693m"
            },
            {
                item: "莲花池公园",
                distance: "1.7km"
            },
            {
                item: "京西大厦",
                distance: "2.4km"
            }
        ],
        repast: [
            {
                item: "北京西站南广场",
                distance: "2.1km"
            }
        ],
        shop: [
            {
                item: "北京银座和谐广场",
                distance: "787m"
            },
            {
                item: "亿潼隆(万丰购物中心)",
                distance: "1.7km"
            },
            {
                item: "奥特莱斯",
                distance: "1.7km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c16569074200005d003199"),
    "r_name": "近八一制片厂西站肿瘤医院莲花池自然原宿",
    star: 5,
    price: 600,
    "new_price": 570,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg"
            ]
        },
        {
            "class_name": "客厅",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062358069734_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062358189170_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062359004921_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062359418780_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070001445143_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070002113495_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070004538353_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070002544075_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070003245515_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070003581639_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070006566135_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "实拍",
            "优选",
            "可做饭",
            "宽松取消",
            "立即确认"
        ],
        play: [ ]
    },
    params: {
        attr: "实拍·整套",
        house: 2,
        bed: 2,
        "person_count": 4,
        area: 68
    },
    nearby: "",
    location: "海淀区, 北京海淀区莲宝路10号院-9号楼",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "天天优惠减30",
    city: "海淀区",
    "con_title": "优选pro",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: true
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: false
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: false
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: false
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: false
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "北京--之家",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_200803/thumb/202008031006479487_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": 1623287145305,
            score: 4.6,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 2,
            text: "提前7天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: false
                },
                {
                    item: "带宠物",
                    support: false
                },
                {
                    item: "吸烟",
                    support: false
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: true
                }
            ],
            explains: "标准入住2人，可加1人，¥100/人/晚1、进小区访客需预约，所以请到达之前告知房东；请从北门进来；2、北门口有家农夫山泉芝麻店，新用户购水非常超值，入住几天的饮用水，大概9.9元就能搞定；3、入住时请向房东索要房门、大门、小区门禁及钥匙；4、窗帘为电动，可用遥控器，如不会请咨询房东。祝您入住愉快！"
        }
    },
    circum: {
        traffic: [
            {
                item: "六里桥地铁站",
                distance: "1km",
                duration: "10min"
            },
            {
                item: "六里桥长途客运站",
                distance: "1.4km",
                duration: ""
            },
            {
                item: "六里桥地铁站",
                distance: "1km",
                duration: "10min"
            }
        ],
        sights: [
            {
                item: "八一电影制片厂",
                distance: "693m"
            },
            {
                item: "莲花池公园",
                distance: "1.7km"
            },
            {
                item: "京西大厦",
                distance: "2.4km"
            }
        ],
        repast: [
            {
                item: "北京西站南广场",
                distance: "2.1km"
            }
        ],
        shop: [
            {
                item: "北京银座和谐广场",
                distance: "787m"
            },
            {
                item: "亿潼隆(万丰购物中心)",
                distance: "1.7km"
            },
            {
                item: "奥特莱斯",
                distance: "1.7km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c16571074200005d00319a"),
    "r_name": " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
    star: 5,
    price: 410,
    "new_price": 328,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg"
            ]
        },
        {
            "class_name": "客厅",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212203085237_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212204051409_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212204053407_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212205374115_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212204233988_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936387781_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070937112028_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070937119486_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070937115167_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070937382870_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070939121206_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070940345692_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070941009438_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070940406058_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070940356980_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070940356980_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070941288813_700_467.jpg"
            ]
        },
        {
            "class_name": "厨房",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943217679_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943159050_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943151630_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943467187_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943465440_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070944138103_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070944134339_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "超赞房东",
            "可做饭",
            "近地铁",
            "立即确认"
        ],
        play: [
            "私人影院",
            "有投影"
        ]
    },
    params: {
        attr: "单间",
        house: 2,
        bed: 1,
        "person_count": 2,
        area: 19
    },
    nearby: "",
    location: "海淀区, 北京海淀区北太平庄街道 文慧园路甲2号院",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "天天优惠减82",
    city: "海淀区",
    "con_title": "优选pro",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: true
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: false
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: false
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: false
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: false
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: false
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "逸逸の家",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_210318/thumb/202103181114255785_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "https://pic.tujia.com/upload/festatic/app/tujia_useravatar.png",
            "order_time": 1623287153285,
            score: 4.6,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 2,
            text: "提前7天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: false
                },
                {
                    item: "接待外宾",
                    support: false
                },
                {
                    item: "带宠物",
                    support: false
                },
                {
                    item: "吸烟",
                    support: false
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: false
                },
                {
                    item: "商业拍摄",
                    support: false
                }
            ],
            explains: "标准入住2人，可加1人，¥100/人/晚1、进小区访客需预约，所以请到达之前告知房东；请从北门进来；2、北门口有家农夫山泉芝麻店，新用户购水非常超值，入住几天的饮用水，大概9.9元就能搞定；3、入住时请向房东索要房门、大门、小区门禁及钥匙；4、窗帘为电动，可用遥控器，如不会请咨询房东。祝您入住愉快！"
        }
    },
    circum: {
        traffic: [
            {
                item: "德胜门",
                distance: "490m",
                duration: ""
            },
            {
                item: "什刹海",
                distance: "1.6km",
                duration: ""
            },
            {
                item: "后海",
                distance: "1.7km",
                duration: ""
            }
        ],
        sights: [ ],
        repast: [ ],
        shop: [
            {
                item: "新华百货",
                distance: "407m"
            },
            {
                item: "枫蓝国际购物中心",
                distance: "1.1km"
            },
            {
                item: "学院派时尚购物广场",
                distance: "1.7km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c16597074200005d00319b"),
    "r_name": "乐·光·山景房",
    star: 4,
    price: 578,
    "new_price": 520,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_200818/thumb/202008182033287724_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102023513610_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102024313449_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102044406390_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200811/thumb/202008110000189253_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200811/thumb/202008110000219059_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200811/thumb/202008110000223335_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200811/thumb/202008110001515796_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200811/thumb/202008110923534443_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200811/thumb/202008110925009828_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200818/thumb/202008182033287724_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214147456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214192777_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312110263399_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312110263399_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312110265536_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312110265536_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214143160_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "端午力推",
            "超赞房东",
            "可做饭",
            "免费停车",
            "近地铁",
            "行李寄存",
            "立即确认"
        ],
        play: [
            "山景房",
            "有麻将机"
        ]
    },
    params: {
        attr: "实拍·整套",
        house: 1,
        bed: 1,
        "person_count": 2,
        area: 53
    },
    nearby: "近地铁站.距离万安地铁站直线距离738m，步行约22min",
    location: "海淀区, 北京海淀区永泰·自在香山10号楼",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "海淀区",
    "con_title": "天天特惠",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: false
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: true
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: true
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: true
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: true
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: true
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "田田的小屋",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_190702/thumb/201907022107568967_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "",
            "order_time": 1623287191878,
            score: 4.9,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 3,
            text: "提前14天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: true
                },
                {
                    item: "带宠物",
                    support: true
                },
                {
                    item: "吸烟",
                    support: true
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: true
                }
            ],
            explains: "标准入住2人，可加1人，无需额外费用提前联系入住时间,安排接待.使用橱房及卫生间时请尽量及时擦试水渍,以免将地板浸泡.注意用水用电安全,降低噪音以免影响邻居休息.给您一个家的环境,希望您也像自己家里一样爱护我们的房子!."
        }
    },
    circum: {
        traffic: [
            {
                item: "万安地铁站",
                distance: "738m",
                duration: "步行约22min"
            },
            {
                item: "茶棚地铁站",
                distance: "1.4km",
                duration: "驾车约12min"
            },
            {
                item: "清河站",
                distance: "10km"
            },
            {
                item: "黄村站",
                distance: "13.9"
            }
        ],
        sights: [
            {
                item: "北京香山国际高尔夫俱乐部",
                distance: "1.2km"
            },
            {
                item: "中国科学院植物研究所北京植物园",
                distance: "2.4km"
            },
            {
                item: "中间艺术馆",
                distance: "2.6km"
            }
        ],
        repast: [
            {
                item: "平庄郊野公园管理处",
                distance: "3.5km"
            }
        ],
        shop: [
            {
                item: "达美乐新鲜专卖店",
                distance: "1km"
            },
            {
                item: "香山",
                distance: "1.3km"
            },
            {
                item: "老刘蔬菜水果粮油",
                distance: "1.6km"
            }
        ]
    }
} ]);
db.getCollection("detail").insert([ {
    _id: ObjectId("60c165a6074200005d00319c"),
    "r_name": "270度观山.双人按摩浴缸.情侣.家庭",
    star: 3,
    price: 658,
    "new_price": 592,
    swiper: [
        {
            "class_name": "封面",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg"
            ]
        },
        {
            "class_name": "卧室",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152319141688_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318438740_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152319474100_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200119/thumb/202001191656166908_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270107201303_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270107157389_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270107226569_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270107215122_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121468218_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312122282687_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312122291791_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312122294775_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312123051480_700_467.jpg"
            ]
        },
        {
            "class_name": "卫生间",
            type: "image",
            url: [
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321119008_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152320277328_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321553270_700_467.jpeg",
                "https://pic.tujia.com/upload/landlordunit/day_200119/thumb/202001191729154567_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200119/thumb/202001191730096954_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270108149476_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270108113406_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270108145573_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270108161562_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210427/thumb/202104270108166629_700_467.jpg"
            ]
        }
    ],
    label: {
        base: [
            "端午力推",
            "超赞房东",
            "行李寄存",
            "免费停车",
            "立即确认"
        ],
        play: [
            "养生spa",
            "山景房",
            "有浴缸",
            "有麻将机"
        ]
    },
    params: {
        attr: "实拍·整套",
        house: 1,
        bed: 2,
        "person_count": 2,
        area: 40
    },
    nearby: "近地铁站.距离万安地铁站直线距离1.5km，驾车约7min",
    location: "海淀区, 北京海淀区永泰·自在香山10号楼(闵庄路)",
    "location_x": "",
    "location_y": "",
    "service_id": "",
    preferential: "",
    city: "海淀区",
    "con_title": "天天特惠",
    facility: {
        serve: [
            {
                name: "免费停车位",
                support: true
            },
            {
                name: "行李寄存",
                support: true
            },
            {
                name: "一客一扫",
                support: true
            },
            {
                name: "前台接待",
                support: false
            }
        ],
        base: [
            {
                name: "无线网络",
                support: true
            },
            {
                name: "电梯",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "空调-冷暖",
                support: true
            },
            {
                name: "电热水壶",
                support: true
            },
            {
                name: "冰箱",
                support: true
            },
            {
                name: "洗衣粉/液",
                support: true
            },
            {
                name: "电梯",
                support: false
            },
            {
                name: "暖气",
                support: true
            },
            {
                name: "沙发",
                support: true
            },
            {
                name: "洗衣机",
                support: true
            },
            {
                name: "电熨斗",
                support: true
            },
            {
                name: "窗户",
                support: true
            },
            {
                name: "晾衣架",
                support: true
            },
            {
                name: "电视",
                support: true
            },
            {
                name: "空气净化器",
                support: true
            }
        ],
        bath: [
            {
                name: "热水",
                support: true
            },
            {
                name: "独立卫浴",
                support: true
            },
            {
                name: "电吹风",
                support: true
            },
            {
                name: "洗浴用品",
                support: true
            },
            {
                name: "卫生纸",
                support: true
            },
            {
                name: "洗手液",
                support: true
            },
            {
                name: "拖鞋",
                support: true
            },
            {
                name: "牙具",
                support: true
            },
            {
                name: "浴巾",
                support: true
            },
            {
                name: "毛巾",
                support: true
            }
        ],
        kitchen: [
            {
                name: "微波炉",
                support: true
            },
            {
                name: "餐具",
                support: true
            },
            {
                name: "刀具菜板",
                support: true
            },
            {
                name: "烹饪锅具",
                support: true
            },
            {
                name: "电磁炉",
                support: true
            },
            {
                name: "燃气灶",
                support: true
            },
            {
                name: "调料",
                support: true
            },
            {
                name: "洗涤用品",
                support: true
            },
            {
                name: "电饭煲",
                support: true
            },
            {
                name: "烧烤器具",
                support: true
            }
        ],
        house: [
            {
                name: "玻璃房",
                support: true
            }
        ],
        nearby: [
            {
                name: "超市",
                support: true
            },
            {
                name: "餐厅",
                support: true
            },
            {
                name: "药店",
                support: true
            },
            {
                name: "菜市场",
                support: true
            },
            {
                name: "儿童乐园",
                support: true
            }
        ],
        secure: [
            {
                name: "智能门锁",
                support: true
            },
            {
                name: "保安",
                support: true
            },
            {
                name: "火灾警报器",
                support: true
            },
            {
                name: "灭火器",
                support: true
            }
        ]
    },
    owner: {
        uname: "田田的小屋",
        img: "https://pic.tujia.com/upload/landlordstorelogo/day_190702/thumb/201907022107568967_90_90.jpg",
        sid: "1763883809"
    },
    discuss: [
        {
            uname: "GaoWuJie",
            uimg: "",
            "order_time": 1623287206876,
            score: 4.9,
            content: "评论内容"
        }
    ],
    notice: {
        "enter_date": "14:00",
        "leave_date": "12:00",
        assure: {
            isassure: false,
            text: "免押入住，订房更轻松"
        },
        clean: "您将免费享受房东提供的深度客房清洁服务",
        invoice: "平台可开具发票",
        cancel: {
            grade: 3,
            text: "提前14天取消订单，可退全款"
        },
        type: {
            list: [
                {
                    item: "接待儿童",
                    support: true
                },
                {
                    item: "接待老人",
                    support: true
                },
                {
                    item: "接待外宾",
                    support: true
                },
                {
                    item: "带宠物",
                    support: true
                },
                {
                    item: "吸烟",
                    support: true
                },
                {
                    item: "做饭",
                    support: true
                },
                {
                    item: "聚会",
                    support: true
                },
                {
                    item: "商业拍摄",
                    support: true
                }
            ],
            explains: "标准入住2人，可加1人，无需额外费用提前联系入住时间,安排接待.使用橱房及卫生间时请尽量及时擦试水渍,以免将地板浸泡.注意用水用电安全,降低噪音以免影响邻居休息.给您一个家的环境,希望您也像自己家里一样爱护我们的房子!."
        }
    },
    circum: {
        traffic: [
            {
                item: "万安地铁站",
                distance: "1.5km",
                duration: "驾车约7min"
            },
            {
                item: "清河站",
                distance: "10.9km"
            },
            {
                item: "北京北站",
                distance: "14.4km"
            }
        ],
        sights: [
            {
                item: "北京香山国际高尔夫俱乐部",
                distance: "1.4km"
            },
            {
                item: "北京西山国家森林公园(昌华园区)",
                distance: "2km"
            },
            {
                item: "中间剧场",
                distance: "2km"
            }
        ],
        repast: [
            {
                item: "平庄郊野公园管理处",
                distance: "3.1km"
            }
        ],
        shop: [
            {
                item: "达美乐新鲜专卖店",
                distance: "745m"
            },
            {
                item: "香山",
                distance: "1.4km"
            },
            {
                item: "光盛园",
                distance: "1.9km"
            }
        ]
    }
} ]);

// ----------------------------
// Collection structure for index_swiper
// ----------------------------
db.getCollection("index_swiper").drop();
db.createCollection("index_swiper");

// ----------------------------
// Documents of index_swiper
// ----------------------------
db.getCollection("index_swiper").insert([ {
    _id: ObjectId("60c30f7a413d0000ed002392"),
    rid: ObjectId("60c164a7074200005d003192"),
    url: "https://pic.tujia.com/upload/resourcespic/day_210609/202106091431245515.png"
} ]);
db.getCollection("index_swiper").insert([ {
    _id: ObjectId("60c30f7d413d0000ed002393"),
    rid: ObjectId("60c164ac074200005d003193"),
    url: "https://pic.tujia.com/upload/resourcespic/day_210609/202106091432152901.jpg"
} ]);

// ----------------------------
// Collection structure for search
// ----------------------------
db.getCollection("search").drop();
db.createCollection("search");

// ----------------------------
// Documents of search
// ----------------------------
db.getCollection("search").insert([ {
    _id: ObjectId("60c811d1a43700003a007832"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c81205a43700003a007833"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c1620fe2e02660d60450"),
    text: "丰台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c1690fe2e02660d60451"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c16f0fe2e02660d60452"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c36a0fe2e02660d60453"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c3e00fe2e02660d60454"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c45a91bda15790895b22"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c479d74aa6227890b820"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c4902611ed59ac0d61f7"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c4d27618af0f844c630b"),
    text: "优惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c8c4ef7618af0f844c630c"),
    text: "特惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c94c9b1de8875aac9aaf93"),
    text: "特惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c94cba1de8875aac9aaf94"),
    text: "特惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c94f5447a8263bf87eaf4b"),
    text: "特惠"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c94f5f47a8263bf87eaf4c"),
    text: "海淀"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c94f6147a8263bf87eaf4d"),
    text: "海淀"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60c94f6647a8263bf87eaf4e"),
    text: "海淀"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58065cfe2d0700621836"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58065cfe2d0700621837"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58085cfe2d0700621838"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb581a5cfe2d0700621839"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb581b5cfe2d070062183a"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58345cfe2d070062183b"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58345cfe2d070062183c"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58385cfe2d070062183d"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58385cfe2d070062183e"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58465cfe2d070062183f"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58465cfe2d0700621840"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58555cfe2d0700621841"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58555cfe2d0700621842"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58795cfe2d0700621843"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58795cfe2d0700621844"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb587b5cfe2d0700621845"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb589d5cfe2d0700621846"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb589d5cfe2d0700621847"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58f55cfe2d0700621848"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb58f55cfe2d0700621849"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb590d5cfe2d070062184a"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb590d5cfe2d070062184b"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb591d5cfe2d070062184c"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb591d5cfe2d070062184d"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59285cfe2d070062184e"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59295cfe2d070062184f"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb592a5cfe2d0700621850"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb592a5cfe2d0700621851"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb592e5cfe2d0700621852"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb593e5cfe2d0700621853"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb593e5cfe2d0700621854"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb593f5cfe2d0700621855"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb599c5cfe2d0700621856"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb599c5cfe2d0700621857"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59e05cfe2d0700621858"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59e05cfe2d0700621859"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59f15cfe2d070062185a"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59f15cfe2d070062185b"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59f65cfe2d070062185c"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb59f65cfe2d070062185d"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5a385cfe2d070062185e"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5a385cfe2d070062185f"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5cda5cfe2d0700621860"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5cf35cfe2d0700621861"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5d0c5cfe2d0700621862"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5d0c5cfe2d0700621863"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5da45cfe2d0700621864"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5e055cfe2d0700621865"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cb5e055cfe2d0700621866"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf3ad87c378021c7fce65"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf3d987c378021c7fce66"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf46987c378021c7fce67"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf53987c378021c7fce68"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf54b87c378021c7fce69"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf55287c378021c7fce6a"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf64587c378021c7fce6b"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf7c187c378021c7fce6c"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf7d987c378021c7fce6d"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf7da87c378021c7fce6e"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf7e887c378021c7fce6f"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf7e887c378021c7fce70"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf7ef87c378021c7fce71"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf80b87c378021c7fce72"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf96587c378021c7fce73"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf96587c378021c7fce74"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf96587c378021c7fce75"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf99487c378021c7fce76"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf99487c378021c7fce77"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbf99487c378021c7fce78"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfab287c378021c7fce79"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfcef87c378021c7fce7a"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfe1087c378021c7fce7b"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfe2787c378021c7fce7c"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfe4187c378021c7fce7d"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfe4187c378021c7fce7e"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfe6a87c378021c7fce7f"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfe6b87c378021c7fce80"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfecc87c378021c7fce81"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbff5787c378021c7fce82"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cbfff887c378021c7fce83"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc009f87c378021c7fce84"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc00ac87c378021c7fce85"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc00b787c378021c7fce86"),
    text: "北京"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc00d787c378021c7fce87"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc00e987c378021c7fce88"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc015587c378021c7fce89"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc016187c378021c7fce8a"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc088787c378021c7fce8b"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc090787c378021c7fce8c"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc093b87c378021c7fce8d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc095d87c378021c7fce8e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc09bc87c378021c7fce8f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc09c087c378021c7fce90"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc0a4287c378021c7fce91"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2c7587c378021c7fce92"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2d5087c378021c7fce93"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2df187c378021c7fce94"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2dfe87c378021c7fce95"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2e7487c378021c7fce96"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2ec987c378021c7fce97"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2ecd87c378021c7fce98"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2ed287c378021c7fce99"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2ed987c378021c7fce9a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc2ee787c378021c7fce9b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc3c53417dda18a444d393"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc4e4c417dda18a444d394"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc4ea4417dda18a444d395"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc4f27417dda18a444d396"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc4f43417dda18a444d397"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cc5099417dda18a444d398"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cd9048495561359caf4e68"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cedf65495561359caf4e69"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cedfbc495561359caf4e6a"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee1a4495561359caf4e6b"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee2fc495561359caf4e6c"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee308495561359caf4e6d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee31c495561359caf4e6e"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee325495561359caf4e6f"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee374495561359caf4e70"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee634495561359caf4e71"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cee950495561359caf4e72"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60ceee50495561359caf4e73"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cef034495561359caf4e74"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cef066495561359caf4e75"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf056ccc3f92092cb2b7e6"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf0636cc3f92092cb2b7e7"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf0765cc3f92092cb2b7e8"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf07d2cc3f92092cb2b7e9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf1b6ecc3f92092cb2b7ea"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf535ccc3f92092cb2b7ec"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf5d3b99133f14886f3cb7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf5db899133f14886f3cb8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf5dfb99133f14886f3cb9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf5dfe99133f14886f3cba"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf618973537f21009060fe"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf618e73537f21009060ff"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf6ea973537f2100906100"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf6ecb73537f2100906101"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf6f1773537f2100906102"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf766f1724c6272c89c140"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf76761724c6272c89c141"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf7a5e1724c6272c89c142"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf8ce41724c6272c89c145"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf8cf11724c6272c89c146"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60cf91c81724c6272c89c147"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d026753a09b73184d7f0bd"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d026a53a09b73184d7f0be"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d02ec6cece182844112420"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d02ecfcece182844112421"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d03043cece182844112422"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d04b02d86c2938fcd53fa8"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d05b23d86c2938fcd53fa9"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d076f620d7a321ecabc467"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d0b40294d5a220a04548d1"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d0cddf94d5a220a04548d2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d140b694d5a220a04548e1"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d140cd94d5a220a04548e2"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d140cd94d5a220a04548e3"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1410894d5a220a04548e4"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d141e794d5a220a04548e5"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d141ea94d5a220a04548e6"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1436e94d5a220a04548e8"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d17f1294d5a220a04548fc"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1823494d5a220a04548ff"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1831d94d5a220a0454900"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d183f894d5a220a0454902"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1847894d5a220a0454903"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1851c94d5a220a0454904"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1856194d5a220a0454905"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d186da94d5a220a0454906"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d188b194d5a220a0454907"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1912ed7f56210e0223ae2"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d19258d7f56210e0223ae3"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d19305d7f56210e0223ae4"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1943fd7f56210e0223ae5"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d194add7f56210e0223ae7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d194c2d7f56210e0223ae8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1a69fd7f56210e0223b0a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1a8ffd7f56210e0223b0b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1a91fd7f56210e0223b0d"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1a953d7f56210e0223b0e"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1a97fd7f56210e0223b0f"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1a9ebd7f56210e0223b10"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1c9158fd6a9147cfa214b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1ca358fd6a9147cfa214e"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d24a65ccce0aa4cfc143"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d2b765ccce0aa4cfc146"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d3b065ccce0aa4cfc147"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d40665ccce0aa4cfc14b"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d41565ccce0aa4cfc14c"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d45565ccce0aa4cfc14d"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d69165ccce0aa4cfc150"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d6b965ccce0aa4cfc151"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d9a565ccce0aa4cfc154"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d9ea65ccce0aa4cfc155"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1d9eb65ccce0aa4cfc156"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1de0965ccce0aa4cfc15b"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1de4165ccce0aa4cfc15d"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1de7665ccce0aa4cfc15e"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e2c665ccce0aa4cfc160"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e2cb65ccce0aa4cfc161"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e2de65ccce0aa4cfc162"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e2e865ccce0aa4cfc163"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e2ef65ccce0aa4cfc164"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e32265ccce0aa4cfc166"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e4e865ccce0aa4cfc168"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e6e465ccce0aa4cfc17f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e9a865ccce0aa4cfc184"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e9b965ccce0aa4cfc185"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1e9e465ccce0aa4cfc186"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1f21f65ccce0aa4cfc19e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d1f72e65ccce0aa4cfc1a2"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d287fe65ccce0aa4cfc1a3"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2880765ccce0aa4cfc1a4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2892765ccce0aa4cfc1a5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d289a965ccce0aa4cfc1a6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d28b9365ccce0aa4cfc1a7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d28c5165ccce0aa4cfc1a8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d298f265ccce0aa4cfc1b0"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2991665ccce0aa4cfc1b1"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2992165ccce0aa4cfc1b2"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d299c165ccce0aa4cfc1b3"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d29ff824a9f50348d97dd7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a2b624a9f50348d97ddb"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a39924a9f50348d97ddc"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a3ca24a9f50348d97ddd"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a3d124a9f50348d97dde"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a3d324a9f50348d97ddf"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a3db24a9f50348d97de0"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a3e024a9f50348d97de1"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2a3e424a9f50348d97de2"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2b0c21ed29d03ec5575dd"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2bfee1ed29d03ec5575e5"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2bff41ed29d03ec5575e6"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2bff71ed29d03ec5575e7"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2bffd1ed29d03ec5575e8"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2c0001ed29d03ec5575e9"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2c0031ed29d03ec5575ea"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2c00a1ed29d03ec5575eb"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2c00e1ed29d03ec5575ec"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2d07d1ed29d03ec5575f0"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2d1cd1ed29d03ec5575f1"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2e9c31ed29d03ec557615"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ea091ed29d03ec557616"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ea251ed29d03ec557617"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ea5c1ed29d03ec55761a"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eaa61ed29d03ec55761d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eaac1ed29d03ec55761e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eaba1ed29d03ec55761f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eac01ed29d03ec557620"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eacc1ed29d03ec557621"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eb581ed29d03ec557625"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eb581ed29d03ec557626"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eb581ed29d03ec557627"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eb591ed29d03ec557628"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eb7b1ed29d03ec557629"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eba71ed29d03ec55762a"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ebac1ed29d03ec55762b"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ebbb1ed29d03ec55762c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eccc1ed29d03ec55762f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ed181ed29d03ec557631"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2edcf1ed29d03ec557632"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ede31ed29d03ec557633"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eebf1ed29d03ec557634"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eec81ed29d03ec557635"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eed61ed29d03ec557636"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eee51ed29d03ec557637"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eee71ed29d03ec557638"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eef01ed29d03ec557639"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eefa1ed29d03ec55763a"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2eefb1ed29d03ec55763b"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ef111ed29d03ec55763c"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ef171ed29d03ec55763d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ef2b1ed29d03ec55763e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ef341ed29d03ec55763f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ef451ed29d03ec557640"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2ef6d1ed29d03ec557644"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f1131ed29d03ec557645"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f1191ed29d03ec557646"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f1421ed29d03ec557647"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f1571ed29d03ec557648"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f3391ed29d03ec55764c"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f3491ed29d03ec55764d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f3571ed29d03ec55764e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f35a1ed29d03ec55764f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f3661ed29d03ec557650"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f3771ed29d03ec557651"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f37d1ed29d03ec557652"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f38b1ed29d03ec557653"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d2f5131ed29d03ec557655"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d321b61ed29d03ec557683"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d321c21ed29d03ec557684"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d321e51ed29d03ec557685"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d326451ed29d03ec557688"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3267f1ed29d03ec557689"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d326811ed29d03ec55768a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d326df1ed29d03ec55768b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3279f1ed29d03ec55768c"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327ab1ed29d03ec55768d"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327af1ed29d03ec55768e"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327b01ed29d03ec55768f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327b41ed29d03ec557690"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327bf1ed29d03ec557691"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327c21ed29d03ec557692"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327c51ed29d03ec557693"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327c61ed29d03ec557694"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327d11ed29d03ec557695"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327df1ed29d03ec557696"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327ee1ed29d03ec557697"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327f71ed29d03ec557698"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d327fe1ed29d03ec557699"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d328291ed29d03ec55769a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32a1f1ed29d03ec55769b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32c6c1ed29d03ec55769c"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32d801ed29d03ec5576a0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32f301ed29d03ec5576a5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32f371ed29d03ec5576a6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32f3a1ed29d03ec5576a7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32f401ed29d03ec5576a8"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d32f431ed29d03ec5576a9"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3342a1ed29d03ec5576ac"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d335ae1ed29d03ec5576ad"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d335be1ed29d03ec5576ae"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d336091ed29d03ec5576af"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d336441ed29d03ec5576b0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d336fe1ed29d03ec5576b1"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337051ed29d03ec5576b2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3373e1ed29d03ec5576b3"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3373e1ed29d03ec5576b4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3373e1ed29d03ec5576b5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337441ed29d03ec5576b6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337441ed29d03ec5576b7"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337441ed29d03ec5576b8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337491ed29d03ec5576b9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337491ed29d03ec5576ba"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337491ed29d03ec5576bb"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337501ed29d03ec5576bc"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337691ed29d03ec5576bd"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337691ed29d03ec5576be"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3376d1ed29d03ec5576bf"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3376f1ed29d03ec5576c0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337701ed29d03ec5576c1"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337721ed29d03ec5576c2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3377b1ed29d03ec5576c3"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337821ed29d03ec5576c4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337831ed29d03ec5576c5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337831ed29d03ec5576c6"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337851ed29d03ec5576c7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3378a1ed29d03ec5576c8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3378b1ed29d03ec5576c9"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3378b1ed29d03ec5576ca"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337931ed29d03ec5576cb"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3379b1ed29d03ec5576cc"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d337bc1ed29d03ec5576cd"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d338991ed29d03ec5576cf"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33c7c1ed29d03ec5576d1"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33ca31ed29d03ec5576d2"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33cb61ed29d03ec5576d3"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33cb91ed29d03ec5576d4"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33cbb1ed29d03ec5576d5"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33ccb1ed29d03ec5576d6"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33cd81ed29d03ec5576d7"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33cdb1ed29d03ec5576d8"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33d101ed29d03ec5576d9"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33d3f1ed29d03ec5576da"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33d481ed29d03ec5576db"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33d611ed29d03ec5576dc"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33d801ed29d03ec5576dd"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33d951ed29d03ec5576de"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33dbd1ed29d03ec5576df"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33dcd1ed29d03ec5576e0"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33dd71ed29d03ec5576e1"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33ddc1ed29d03ec5576e2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33de41ed29d03ec5576e3"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33dea1ed29d03ec5576e4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33e051ed29d03ec5576e5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33e151ed29d03ec5576e6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33e2d1ed29d03ec5576e7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33e351ed29d03ec5576e8"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33ec91ed29d03ec5576e9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33eca1ed29d03ec5576ea"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33ede1ed29d03ec5576eb"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33edf1ed29d03ec5576ec"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33eec1ed29d03ec5576ed"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33eed1ed29d03ec5576ee"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33f1d1ed29d03ec5576ef"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33f1d1ed29d03ec5576f0"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33f241ed29d03ec5576f1"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d33f241ed29d03ec5576f2"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3404c1ed29d03ec5576f3"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340651ed29d03ec5576f4"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340671ed29d03ec5576f5"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3407d1ed29d03ec5576f6"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340961ed29d03ec5576f7"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340af1ed29d03ec5576f8"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d81ed29d03ec5576f9"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec5576fa"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec5576fb"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec5576fc"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec5576fd"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec5576fe"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec5576ff"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557700"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557701"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557702"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557703"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557704"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557705"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557706"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557707"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557708"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec557709"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340d91ed29d03ec55770a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec55770b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec55770c"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec55770d"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec55770e"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec55770f"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557710"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557711"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557712"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557713"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557714"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557715"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557716"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557717"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557718"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec557719"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340da1ed29d03ec55771a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55771b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55771c"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55771d"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55771e"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55771f"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557720"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557721"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557722"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557723"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557724"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557725"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557726"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557727"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557728"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec557729"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55772a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55772b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55772c"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340db1ed29d03ec55772d"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340dc1ed29d03ec55772e"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340dc1ed29d03ec55772f"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340dc1ed29d03ec557730"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340dc1ed29d03ec557731"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340dc1ed29d03ec557732"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340dc1ed29d03ec557733"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340eb1ed29d03ec557734"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340eb1ed29d03ec557735"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340ec1ed29d03ec557736"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d340ec1ed29d03ec557737"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341021ed29d03ec557738"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341021ed29d03ec557739"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341051ed29d03ec55773a"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3410d1ed29d03ec55773b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3410d1ed29d03ec55773c"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3410e1ed29d03ec55773d"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341111ed29d03ec55773e"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341161ed29d03ec55773f"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341341ed29d03ec557740"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3413d1ed29d03ec557741"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3413d1ed29d03ec557742"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341491ed29d03ec557743"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341491ed29d03ec557744"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3414c1ed29d03ec557745"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3415c1ed29d03ec557746"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341601ed29d03ec557747"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3416e1ed29d03ec557748"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341a31ed29d03ec557749"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341ae1ed29d03ec55774a"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d341b81ed29d03ec55774b"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d34ba41ed29d03ec55774d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d34c981ed29d03ec55774e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d35ff11ed29d03ec55774f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3602f1ed29d03ec557750"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d360d61ed29d03ec557751"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3656d1ed29d03ec557752"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d365731ed29d03ec557753"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3657d1ed29d03ec557754"),
    text: "大"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d365a31ed29d03ec557755"),
    text: "大"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d370931ed29d03ec557756"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d371211ed29d03ec557757"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dd7e1ed29d03ec557758"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3de9b1ed29d03ec557759"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3deb81ed29d03ec55775a"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dec61ed29d03ec55775b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3df201ed29d03ec55775c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3df2b1ed29d03ec55775d"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3df4c1ed29d03ec55775e"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3df5d1ed29d03ec55775f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3df9e1ed29d03ec557760"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dfa31ed29d03ec557761"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dfb21ed29d03ec557762"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dfcd1ed29d03ec557763"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dfd31ed29d03ec557764"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dfd91ed29d03ec557765"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3dff91ed29d03ec557766"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0071ed29d03ec557767"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e02d1ed29d03ec557768"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0371ed29d03ec557769"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e03e1ed29d03ec55776a"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0421ed29d03ec55776b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e04a1ed29d03ec55776c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e04e1ed29d03ec55776d"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0521ed29d03ec55776e"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0581ed29d03ec55776f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0661ed29d03ec557770"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0881ed29d03ec557772"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e0fc1ed29d03ec557773"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1151ed29d03ec557774"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1161ed29d03ec557775"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1361ed29d03ec557776"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1371ed29d03ec557777"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e13c1ed29d03ec557778"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e13c1ed29d03ec557779"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1521ed29d03ec55777a"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1521ed29d03ec55777b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e15d1ed29d03ec55777c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e15d1ed29d03ec55777d"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1611ed29d03ec55777e"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1621ed29d03ec55777f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1661ed29d03ec557780"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1671ed29d03ec557781"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1771ed29d03ec557782"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1781ed29d03ec557783"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1c31ed29d03ec557784"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1c31ed29d03ec557785"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1c71ed29d03ec557786"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1c71ed29d03ec557787"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1d21ed29d03ec557788"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1d21ed29d03ec557789"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1da1ed29d03ec55778a"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1db1ed29d03ec55778b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1ef1ed29d03ec55778c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1ef1ed29d03ec55778d"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1f21ed29d03ec55778e"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1f31ed29d03ec55778f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1f61ed29d03ec557790"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1f61ed29d03ec557791"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1fd1ed29d03ec557792"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e1fe1ed29d03ec557793"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e2211ed29d03ec557794"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3481ed29d03ec557795"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3481ed29d03ec557796"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e35a1ed29d03ec557797"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3811ed29d03ec557798"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3811ed29d03ec557799"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3891ed29d03ec55779a"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e38a1ed29d03ec55779b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e38f1ed29d03ec55779c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e38f1ed29d03ec55779d"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3bb1ed29d03ec55779e"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3be1ed29d03ec55779f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3c21ed29d03ec5577a0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3c21ed29d03ec5577a1"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3cb1ed29d03ec5577a2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3cb1ed29d03ec5577a3"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3d81ed29d03ec5577a4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3d81ed29d03ec5577a5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e3fa1ed29d03ec5577a6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e40a1ed29d03ec5577a7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e41a1ed29d03ec5577a8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e43c1ed29d03ec5577a9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e4681ed29d03ec5577aa"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e4cf1ed29d03ec5577ab"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e4e51ed29d03ec5577ac"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e5a21ed29d03ec5577ad"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e5ea1ed29d03ec5577ae"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6111ed29d03ec5577af"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e61b1ed29d03ec5577b0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6451ed29d03ec5577b1"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6741ed29d03ec5577b2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e67d1ed29d03ec5577b3"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6941ed29d03ec5577b4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6941ed29d03ec5577b5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e69e1ed29d03ec5577b6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6a01ed29d03ec5577b7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6a01ed29d03ec5577b8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6a91ed29d03ec5577b9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6a91ed29d03ec5577ba"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6b21ed29d03ec5577bb"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6b21ed29d03ec5577bc"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6b81ed29d03ec5577bd"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6b81ed29d03ec5577be"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6c21ed29d03ec5577bf"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6c31ed29d03ec5577c0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6c81ed29d03ec5577c1"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6c81ed29d03ec5577c2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6fc1ed29d03ec5577c3"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e6fd1ed29d03ec5577c4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7371ed29d03ec5577c5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7381ed29d03ec5577c6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e73f1ed29d03ec5577c7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7401ed29d03ec5577c8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7441ed29d03ec5577c9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7441ed29d03ec5577ca"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e74a1ed29d03ec5577cb"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e74b1ed29d03ec5577cc"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7571ed29d03ec5577cd"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7571ed29d03ec5577ce"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7861ed29d03ec5577cf"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7911ed29d03ec5577d0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7931ed29d03ec5577d1"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7bf1ed29d03ec5577d2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3e7bf1ed29d03ec5577d3"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3eba11ed29d03ec5577d4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3eba41ed29d03ec5577d5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ec2e1ed29d03ec5577d6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ec321ed29d03ec5577d7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ed961ed29d03ec5577d8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ed9b1ed29d03ec5577d9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3edaa1ed29d03ec5577da"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef081ed29d03ec5577db"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef0f1ed29d03ec5577dc"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef291ed29d03ec5577dd"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef4d1ed29d03ec5577de"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef751ed29d03ec5577df"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef841ed29d03ec5577e0"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef8d1ed29d03ec5577e1"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3ef9c1ed29d03ec5577e2"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3efb21ed29d03ec5577e3"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3efbe1ed29d03ec5577e4"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3efdd1ed29d03ec5577e5"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3efe71ed29d03ec5577e6"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3efec1ed29d03ec5577e7"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3eff61ed29d03ec5577e8"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3f0111ed29d03ec5577e9"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3f0d31ed29d03ec5577ea"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3f18d1ed29d03ec5577eb"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d3fb0a1ed29d03ec5577ec"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d41b69214cff08ec0c10fa"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d41bb5214cff08ec0c10fd"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42252214cff08ec0c10fe"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42256214cff08ec0c10ff"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4227e214cff08ec0c1100"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42310214cff08ec0c1101"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42317214cff08ec0c1102"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d423df214cff08ec0c1103"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42470214cff08ec0c1105"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42540214cff08ec0c1106"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42669214cff08ec0c1107"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42676214cff08ec0c1108"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d426a1214cff08ec0c1109"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d426ac214cff08ec0c110a"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d426c2214cff08ec0c110b"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d426ca214cff08ec0c110c"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d426d4214cff08ec0c110d"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d426d7214cff08ec0c110e"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d42784214cff08ec0c110f"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d427b7214cff08ec0c1110"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d427bd214cff08ec0c1111"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d427c2214cff08ec0c1112"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d427cc214cff08ec0c1113"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d427e1214cff08ec0c1114"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d427f5214cff08ec0c1115"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d43b35f0384305d004adf0"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d43b54f0384305d004adf1"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d44ad32fd1fd09688170f3"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d44add2fd1fd09688170f5"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d44aeb2fd1fd09688170f7"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d44b142fd1fd09688170f8"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d44b662fd1fd09688170f9"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d44b7f2fd1fd09688170fa"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d452f32fd1fd09688170fd"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4531c2fd1fd09688170fe"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4531d2fd1fd09688170ff"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4531f2fd1fd0968817100"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d457cd2fd1fd0968817101"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d466f22fd1fd0968817102"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d46a9b2fd1fd0968817103"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d474922fd1fd0968817104"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4986806e91c0a8c85afe5"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4b9a93f594507240dbf66"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4b9af3f594507240dbf67"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bacd3f594507240dbf6b"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bb193f594507240dbf6f"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bb1d3f594507240dbf70"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bb223f594507240dbf71"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bb303f594507240dbf72"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bb3d3f594507240dbf73"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc0e3f594507240dbf74"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc1b3f594507240dbf75"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc203f594507240dbf76"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc243f594507240dbf77"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc2e3f594507240dbf78"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc333f594507240dbf79"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc3a3f594507240dbf7a"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc413f594507240dbf7b"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc513f594507240dbf7c"),
    text: "丰"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc553f594507240dbf7d"),
    text: "优"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc963f594507240dbf7e"),
    text: "优"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bc993f594507240dbf7f"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bca73f594507240dbf80"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bca93f594507240dbf81"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bcab3f594507240dbf82"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bcd13f594507240dbf83"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bcf93f594507240dbf84"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d4bd3a3f594507240dbf85"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d52eb53f594507240dbf88"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d52ef13f594507240dbf89"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d52f833f594507240dbf8a"),
    text: "优"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5502cab828208a8e6c023"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d55385ab828208a8e6c024"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d553b3ab828208a8e6c025"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d56b4c816b970e8c8f9996"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d57a4b48e5420a7437b77c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d585f748e5420a7437b782"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d585f848e5420a7437b783"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5900df3ade00e544397a0"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d590f6f3ade00e544397a4"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5927af3ade00e544397a6"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5ceb7bd49c90f5c76700b"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5cebfbd49c90f5c76700c"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d4e6bd49c90f5c767018"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d8a2bd49c90f5c76701b"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d94cbd49c90f5c76701d"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d959bd49c90f5c76701e"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d963bd49c90f5c76701f"),
    text: "大"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d96dbd49c90f5c767020"),
    text: "大"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d96fbd49c90f5c767021"),
    text: "优"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5d97bbd49c90f5c767022"),
    text: "优"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5db83bd49c90f5c767024"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5db88bd49c90f5c767025"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5e5acbd49c90f5c76702d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5e5b2bd49c90f5c76702e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5ea10bd49c90f5c767030"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5f86dbd49c90f5c76703f"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d5f8d5bd49c90f5c767041"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d611e25fa22a0e10ef5cf3"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d611ef5fa22a0e10ef5cf4"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d675eb5fa22a0e10ef5d17"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d675f35fa22a0e10ef5d18"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d696d0ceb108083c65ce5b"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d696edceb108083c65ce5c"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6970aceb108083c65ce5d"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6aab1ceb108083c65ce6e"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c03cceb108083c65ce7d"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c049ceb108083c65ce7e"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c134ceb108083c65ce85"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c16fceb108083c65ce86"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c179ceb108083c65ce87"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c18fceb108083c65ce8c"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c286ceb108083c65ce97"),
    text: "北"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c396ceb108083c65ce9a"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c562ceb108083c65cea1"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c5c1ceb108083c65cea9"),
    text: "天"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c7e3ceb108083c65cec3"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c80dceb108083c65cec4"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c82cceb108083c65cecf"),
    text: "特"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c871ceb108083c65ced0"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c874ceb108083c65ced1"),
    text: "优"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c878ceb108083c65ced2"),
    text: "大"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c883ceb108083c65ced5"),
    text: "大"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c885ceb108083c65ced6"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c891ceb108083c65ceda"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6c89aceb108083c65cedb"),
    text: "优"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6ca57ceb108083c65cee8"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6ca5eceb108083c65cee9"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6d1c8ceb108083c65cf05"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6d1ccceb108083c65cf06"),
    text: "安"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6d23aceb108083c65cf09"),
    text: "大"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6d241ceb108083c65cf0a"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6d3e3ceb108083c65cf0b"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d6d3f6ceb108083c65cf0c"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d84be7ceb108083c65cf21"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d84c58ceb108083c65cf23"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d84cabceb108083c65cf24"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d85a33ceb108083c65cf25"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d85ab6ceb108083c65cf26"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d85bc7ceb108083c65cf27"),
    text: "西"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d92a88ceb108083c65cf2a"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d92adbceb108083c65cf2b"),
    text: "台"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96276ceb108083c65cf2c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d962f6ceb108083c65cf2f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96460ceb108083c65cf34"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96486ceb108083c65cf35"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96490ceb108083c65cf36"),
    text: "海"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9654cceb108083c65cf37"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96561ceb108083c65cf38"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d965a4ceb108083c65cf39"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d965d2ceb108083c65cf3a"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96606ceb108083c65cf3b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96608ceb108083c65cf3c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96609ceb108083c65cf3d"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9660aceb108083c65cf3e"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96636ceb108083c65cf3f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9669bceb108083c65cf40"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d967c9ceb108083c65cf41"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d967daceb108083c65cf42"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d967e5ceb108083c65cf43"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96809ceb108083c65cf44"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96817ceb108083c65cf45"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9682cceb108083c65cf46"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9682fceb108083c65cf47"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96833ceb108083c65cf48"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96839ceb108083c65cf49"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9683eceb108083c65cf4a"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96845ceb108083c65cf4b"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9684cceb108083c65cf4c"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96871ceb108083c65cf4d"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d96879ceb108083c65cf4e"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d9687fceb108083c65cf4f"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d969c0ceb108083c65cf50"),
    text: "南"
} ]);
db.getCollection("search").insert([ {
    _id: ObjectId("60d969e5ceb108083c65cf51"),
    text: "南"
} ]);

// ----------------------------
// Collection structure for user_info
// ----------------------------
db.getCollection("user_info").drop();
db.createCollection("user_info");
db.getCollection("user_info").createIndex({
    uid: NumberInt("1")
}, {
    name: "uid_NumberInt(\"1\")",
    unique: true
});

// ----------------------------
// Documents of user_info
// ----------------------------
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d19ae4d7f56210e0223af2"),
    uid: ObjectId("60d19ae4d7f56210e0223af1"),
    avatar: "https://tj.testw.top/public/img/avatar-1624636787754.png",
    uname: "zhaoxu",
    sex: NumberInt("1"),
    info: [
        {
            uname: "赵旭",
            id: "410211800598377",
            iid: ObjectId("60d19b3dd7f56210e0223af4")
        },
        {
            uname: "余成林",
            id: "411522200010063611",
            iid: ObjectId("60d1aa5dd7f56210e0223b11")
        },
        {
            uname: "赵雨",
            id: "410211200108265532",
            iid: ObjectId("60d3311e1ed29d03ec5576aa")
        },
        {
            uname: "张三",
            id: "410211800598378",
            iid: ObjectId("60d5ecadbd49c90f5c767035")
        }
    ],
    orders: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            "r_params": {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            cover: "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
            "start_time": 1627401600000,
            "end_time": 1627488000000,
            price: NumberInt("570"),
            name: "3pnd0ph",
            oid: ObjectId("60d6a609ceb108083c65ce69"),
            phone: "18338453334",
            date: 1624679945266,
            state: NumberInt("1")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            title: "天安门西客站万寿路五棵松301温大3居室",
            "r_params": {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            cover: "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
            "start_time": 1625673600000,
            "end_time": 1625760000000,
            price: NumberInt("618"),
            name: "3pnd0ph",
            oid: ObjectId("60d6a68fceb108083c65ce6a"),
            phone: "18338453334",
            date: 1624680079365,
            state: NumberInt("1")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            title: "北京晓晓家家庭公寓1",
            "r_params": {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            cover: "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
            "start_time": 1626192000000,
            "end_time": 1626278400000,
            price: NumberInt("376"),
            name: "zhaoxu",
            oid: ObjectId("60d6c3a0ceb108083c65ce9b"),
            phone: "18338453334",
            date: 1624687520726,
            state: NumberInt("1")
        }
    ],
    age: NumberInt("20"),
    city: "北京市/北京市/丰台区",
    nickname: "you",
    xingming: "赵旭",
    history: [
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: null,
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: null,
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: null,
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: null,
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16597074200005d00319b"),
            imgList: null,
            title: "乐·光·山景房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("53")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("578"),
            "new_price": NumberInt("520")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: null,
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        },
        {
            rid: ObjectId("60c1654f074200005d003195"),
            imgList: null,
            title: "可看西山.南向.超大落地窗.浴缸房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("3"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d19b51d7f56210e0223af7"),
    uid: ObjectId("60d19b51d7f56210e0223af6"),
    avatar: "https://tj.testw.top/public/img/avatar-1624615127197.jpeg",
    uname: "ed0513",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: [
                "\thttps://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041750128959_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041749594785_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946303193_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946179991_700_467.jpg"
            ],
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c1654f074200005d003195"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936119684_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031935268795_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004107976_700_467.jpg"
            ],
            title: "可看西山.南向.超大落地窗.浴缸房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("3"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg"
            ],
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        },
        {
            rid: ObjectId("60c16556074200005d003196"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "八大处整形医院 精装复试一居室 周边完善",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("39")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        },
        {
            rid: ObjectId("60c16597074200005d00319b"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_200818/thumb/202008182033287724_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102023513610_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214147456_700_467.jpg"
            ],
            title: "乐·光·山景房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("53")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("578"),
            "new_price": NumberInt("520")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg"
            ],
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: [
                "\thttps://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041750128959_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041749594785_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946303193_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946179991_700_467.jpg"
            ],
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c1654f074200005d003195"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936119684_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031935268795_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004107976_700_467.jpg"
            ],
            title: "可看西山.南向.超大落地窗.浴缸房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("3"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg"
            ],
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d19d90d7f56210e0223b03"),
    uid: ObjectId("60d19d90d7f56210e0223b02"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "Ycl123456",
    sex: NumberInt("1"),
    info: [
        {
            uname: "高误解",
            id: "411522200010063611",
            iid: ObjectId("60d19dbdd7f56210e0223b04")
        },
        {
            uname: "高一丁",
            id: "411522200010063612",
            iid: ObjectId("60d19e06d7f56210e0223b05")
        },
        {
            uname: "匿名用户",
            id: "410326199903020617",
            iid: ObjectId("60d32d911ed29d03ec5576a1")
        },
        {
            uname: "余成林",
            id: "411522000100636524",
            iid: ObjectId("60d32daa1ed29d03ec5576a2")
        }
    ],
    orders: [
        {
            rid: ObjectId("60c16571074200005d00319a"),
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            "r_params": {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            cover: "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
            "start_time": 1624680000944,
            "end_time": 1624766400944,
            price: NumberInt("328"),
            name: "8g8k7pl",
            oid: ObjectId("60d68cddceb108083c65ce56"),
            phone: "",
            date: 1624673501046,
            state: NumberInt("1")
        }
    ],
    history: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: null,
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: null,
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        },
        {
            rid: ObjectId("60c16556074200005d003196"),
            imgList: null,
            title: "八大处整形医院 精装复试一居室 周边完善",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("39")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c1654f074200005d003195"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936119684_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031935268795_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004107976_700_467.jpg"
            ],
            title: "可看西山.南向.超大落地窗.浴缸房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("3"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg"
            ],
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        },
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg"
            ],
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        },
        {
            rid: ObjectId("60c16597074200005d00319b"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_200818/thumb/202008182033287724_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102023513610_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214147456_700_467.jpg"
            ],
            title: "乐·光·山景房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("53")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("578"),
            "new_price": NumberInt("520")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1c91d8fd6a9147cfa214d"),
    uid: ObjectId("60d1c91d8fd6a9147cfa214c"),
    avatar: "https://tj.testw.top/public/img/avatar-1624640370534.png",
    uname: "19850",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: null,
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: null,
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: null,
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ],
    age: NumberInt("20"),
    city: "北京市/北京市/丰台区",
    nickname: "123",
    xingming: "Baba "
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1d3d565ccce0aa4cfc14a"),
    uid: ObjectId("60d1d3d565ccce0aa4cfc149"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "n3n7gij",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1d97765ccce0aa4cfc153"),
    uid: ObjectId("60d1d97765ccce0aa4cfc152"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "alofcf3",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1daff65ccce0aa4cfc158"),
    uid: ObjectId("60d1daff65ccce0aa4cfc157"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "6lfajhe",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1dde965ccce0aa4cfc15a"),
    uid: ObjectId("60d1dde965ccce0aa4cfc159"),
    avatar: "https://tj.testw.top/public/img/avatar-1624583958673.jpg",
    uname: "oilo0m6",
    sex: NumberInt("1"),
    collect: [
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041749594785_700_467.jpg",
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: NumberInt("2"),
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: NumberInt("3"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("3"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c1654f074200005d003195"),
            imgList: "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031935268795_700_467.jpg",
            title: "可看西山.南向.超大落地窗.浴缸房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("3"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: NumberInt("2"),
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        }
    ],
    age: NumberInt("21"),
    city: "北京市/北京市/海淀区",
    nickname: "我是赵旭",
    xingming: "赵旭",
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: null,
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: null,
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: null,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: null,
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: null,
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        },
        {
            rid: ObjectId("60c16597074200005d00319b"),
            imgList: null,
            title: "乐·光·山景房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("53")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("578"),
            "new_price": NumberInt("520")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: null,
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: null,
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: null,
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: null,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        }
    ],
    info: [
        {
            uname: "范智涛",
            id: "412726200102097517",
            iid: ObjectId("60d5cf4ebd49c90f5c76700e")
        }
    ],
    orders: [ ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1e5c665ccce0aa4cfc17c"),
    uid: ObjectId("60d1e5c665ccce0aa4cfc17b"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "h1ao4ip",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1e7dc65ccce0aa4cfc182"),
    uid: ObjectId("60d1e7dc65ccce0aa4cfc181"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "k382edc",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1ed1c65ccce0aa4cfc18b"),
    uid: ObjectId("60d1ed1c65ccce0aa4cfc18a"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "h7g7nae",
    sex: NumberInt("1"),
    info: [
        {
            uname: "赵旭",
            id: "412727203584587754",
            iid: ObjectId("60d1efa165ccce0aa4cfc18e")
        }
    ],
    orders: [ ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1ed2165ccce0aa4cfc18d"),
    uid: ObjectId("60d1ed2165ccce0aa4cfc18c"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "2i40e18",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1eff665ccce0aa4cfc197"),
    uid: ObjectId("60d1eff665ccce0aa4cfc196"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "l42ffb3",
    sex: NumberInt("1"),
    info: [
        {
            uname: "李小",
            id: "422522200201253526",
            iid: ObjectId("60d1f0f465ccce0aa4cfc199")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d1f24965ccce0aa4cfc1a0"),
    uid: ObjectId("60d1f24965ccce0aa4cfc19f"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "a85el51",
    sex: NumberInt("1"),
    info: [
        {
            uname: "乌拉",
            id: "412908199904204179",
            iid: ObjectId("60d44ab32fd1fd09688170f2")
        },
        {
            uname: "乌拉",
            id: "412705199604154135",
            iid: ObjectId("60d44ad82fd1fd09688170f4")
        }
    ],
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d2a72424a9f50348d97de5"),
    uid: ObjectId("60d2a72424a9f50348d97de4"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "k587djg",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16597074200005d00319b"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_200818/thumb/202008182033287724_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102023513610_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214147456_700_467.jpg"
            ],
            title: "乐·光·山景房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("53")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("578"),
            "new_price": NumberInt("520")
        },
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg"
            ],
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d325e11ed29d03ec557687"),
    uid: ObjectId("60d325e11ed29d03ec557686"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "7jcjo5o",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d57a1748e5420a7437b77b"),
    uid: ObjectId("60d57a1748e5420a7437b77a"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "hsueh",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: [
                "\thttps://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041750128959_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041749594785_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946303193_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946179991_700_467.jpg"
            ],
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg"
            ],
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        },
        {
            rid: ObjectId("60c1654f074200005d003195"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936119684_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031935268795_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004107976_700_467.jpg"
            ],
            title: "可看西山.南向.超大落地窗.浴缸房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("3"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg"
            ],
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        },
        {
            rid: ObjectId("60c16597074200005d00319b"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_200818/thumb/202008182033287724_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102023513610_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214147456_700_467.jpg"
            ],
            title: "乐·光·山景房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("53")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("578"),
            "new_price": NumberInt("520")
        },
        {
            rid: ObjectId("60c16556074200005d003196"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "八大处整形医院 精装复试一居室 周边完善",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("39")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg"
            ],
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ],
    info: [
        {
            uname: "hsueh",
            id: "412722200200625462",
            iid: ObjectId("60d5887e48e5420a7437b788")
        }
    ],
    orders: [ ],
    age: NaN,
    city: null,
    nickname: "hsueh",
    xingming: null
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d5d1f3bd49c90f5c767014"),
    uid: ObjectId("60d5d1f3bd49c90f5c767013"),
    avatar: "https://tj.testw.top/public/img/avatar-1624625884877.jpg",
    uname: "glkc0h6c",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg"
            ],
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c1654f074200005d003195"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031936119684_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104031935268795_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210403/thumb/202104032004107976_700_467.jpg"
            ],
            title: "可看西山.南向.超大落地窗.浴缸房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("3"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg"
            ],
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        },
        {
            rid: ObjectId("60c16556074200005d003196"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "八大处整形医院 精装复试一居室 周边完善",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("39")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("568"),
            "new_price": NumberInt("511")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        },
        {
            rid: ObjectId("60c164b1074200005d003194"),
            imgList: [
                "\thttps://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041750128959_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041749594785_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946303193_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191104/thumb/201911041946179991_700_467.jpg"
            ],
            title: "近北京南站4号线新宫地铁长住优惠单人优惠",
            params: {
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("20"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("138"),
            "new_price": NumberInt("138")
        },
        {
            rid: ObjectId("60c16597074200005d00319b"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_200818/thumb/202008182033287724_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200810/thumb/202008102023513610_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200103/thumb/202001031214147456_700_467.jpg"
            ],
            title: "乐·光·山景房",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("53")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("578"),
            "new_price": NumberInt("520")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ],
    age: NumberInt("19"),
    city: "北京市/北京市/东城区",
    nickname: "363377",
    xingming: "高武杰",
    info: [
        {
            uname: "测试",
            id: "410326199903020617",
            iid: ObjectId("60d5d3debd49c90f5c767015")
        }
    ],
    orders: [
        {
            rid: ObjectId("60c16569074200005d003199"),
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            "r_params": {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            cover: "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
            "start_time": 1624680000359,
            "end_time": 1624766400359,
            price: NumberInt("570"),
            name: "glkc0h6c",
            oid: ObjectId("60d6a284ceb108083c65ce66"),
            phone: "",
            date: 1624679044199,
            state: NumberInt("1")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            "r_params": {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            cover: "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
            "start_time": 1624680000359,
            "end_time": 1624766400359,
            price: NumberInt("570"),
            name: "glkc0h6c",
            oid: ObjectId("60d6a298ceb108083c65ce67"),
            phone: "",
            date: 1624679064177,
            state: NumberInt("1")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d69627ceb108083c65ce58"),
    uid: ObjectId("60d69627ceb108083c65ce57"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "o7j49enh",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d69650ceb108083c65ce5a"),
    uid: ObjectId("60d69650ceb108083c65ce59"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "io51o3k1",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6bfccceb108083c65ce7a"),
    uid: ObjectId("60d6bfccceb108083c65ce79"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "ah2ohc7c",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c1655a074200005d003197"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626027014_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626013145_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210509/thumb/202105091626494492_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238365561_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_210409/thumb/202104091238368628_700_467.jpg"
            ],
            title: "三山五园北欧风情屋",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("38")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("398"),
            "new_price": NumberInt("358")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        }
    ],
    info: [
        {
            uname: "徐铭",
            id: "412701199010181532",
            iid: ObjectId("60d6c17eceb108083c65ce89")
        }
    ],
    orders: [
        {
            rid: ObjectId("60c164ac074200005d003193"),
            title: "北京晓晓家家庭公寓1",
            "r_params": {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            cover: "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
            "start_time": 1624680000986,
            "end_time": 1624766400986,
            price: NumberInt("376"),
            name: "ah2ohc7c",
            oid: ObjectId("60d6c183ceb108083c65ce8b"),
            phone: "15201603213",
            date: 1624686979141,
            state: NumberInt("1")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6bfdbceb108083c65ce7c"),
    uid: ObjectId("60d6bfdbceb108083c65ce7b"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "n2354b8b",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c164ac074200005d003193"),
            imgList: [
                "\thttps://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025218547_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025482554_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025316850_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181221/thumb/201812211025242560_700_467.jpg"
            ],
            title: "北京晓晓家家庭公寓1",
            params: {
                house: NumberInt("1"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("45"),
                attr: "单间"
            },
            score: 4.8,
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("428"),
            "new_price": NumberInt("376")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6c0fdceb108083c65ce82"),
    uid: ObjectId("60d6c0fdceb108083c65ce81"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "4f1p162p",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6c134ceb108083c65ce84"),
    uid: ObjectId("60d6c134ceb108083c65ce83"),
    avatar: "https://tj.testw.top/public/img/avatar-1624687219501.jpg",
    uname: "gaowujie2004",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152318592430_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200115/thumb/202001152321149487_700_467.jpg"
            ],
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            params: {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            score: 4.9,
            "score_count": NumberInt("2"),
            "con_title": "天天特惠",
            price: NumberInt("658"),
            "new_price": NumberInt("592")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ],
    info: [
        {
            uname: "高武杰",
            id: "410326199903020617",
            iid: ObjectId("60d6c1cbceb108083c65ce95")
        }
    ],
    orders: [
        {
            rid: ObjectId("60c165a6074200005d00319c"),
            title: "270度观山.双人按摩浴缸.情侣.家庭",
            "r_params": {
                attr: "实拍·整套",
                house: NumberInt("1"),
                bed: NumberInt("2"),
                "person_count": NumberInt("2"),
                area: NumberInt("40")
            },
            cover: "https://pic.tujia.com/upload/landlordunit/day_210531/thumb/202105312121462784_700_467.jpg",
            "start_time": 1625068800000,
            "end_time": 1625760000000,
            price: NumberInt("4736"),
            name: "gaowujie2004",
            oid: ObjectId("60d6c391ceb108083c65ce99"),
            phone: "",
            date: 1624687505672,
            state: NumberInt("1")
        }
    ],
    age: NaN,
    city: null,
    nickname: "巴巴爸爸",
    xingming: "高武杰"
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6c5b3ceb108083c65cea6"),
    uid: ObjectId("60d6c5b3ceb108083c65cea5"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "kke9gonm",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        }
    ],
    info: [
        {
            uname: "业主",
            id: "130111111111111111",
            iid: ObjectId("60d6c5e6ceb108083c65ceab")
        }
    ],
    orders: [ ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6c5e9ceb108083c65cead"),
    uid: ObjectId("60d6c5e9ceb108083c65ceac"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "6m6jj21o",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6c68bceb108083c65ceb2"),
    uid: ObjectId("60d6c68bceb108083c65ceb1"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "k14obh3b",
    sex: NumberInt("1")
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6c76aceb108083c65cec1"),
    uid: ObjectId("60d6c76aceb108083c65cec0"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "24hdfho7",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        }
    ],
    collect: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d6d070ceb108083c65cefc"),
    uid: ObjectId("60d6d070ceb108083c65cefb"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "eeai0idg",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg"
            ],
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d7f44dceb108083c65cf1b"),
    uid: ObjectId("60d7f44dceb108083c65cf1a"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "g0dpeo7h",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c164a7074200005d003192"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141311141456_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141312143092_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141339476350_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141341036171_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_190414/thumb/201904141342204510_700_467.jpg"
            ],
            title: "天安门西客站万寿路五棵松301温大3居室",
            params: {
                house: NumberInt("3"),
                bed: NumberInt("3"),
                "person_count": NumberInt("6"),
                area: NumberInt("128"),
                attr: "单间"
            },
            score: NumberInt("5"),
            "score_count": NumberInt("3"),
            "con_title": "天天特惠",
            price: NumberInt("618"),
            "new_price": NumberInt("618")
        },
        {
            rid: ObjectId("60c16571074200005d00319a"),
            imgList: [
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936388140_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_200621/thumb/202006212202505054_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070936372984_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943412604_700_467.jpg",
                "https://pic.tujia.com/upload/landlordunit/day_191207/thumb/201912070943455810_700_467.jpg"
            ],
            title: " 「逸家」积水潭|西直门|鼓楼|后海|北师大|近地铁 梦幻投影超大主卧",
            params: {
                attr: "单间",
                house: NumberInt("2"),
                bed: NumberInt("1"),
                "person_count": NumberInt("2"),
                area: NumberInt("19")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("410"),
            "new_price": NumberInt("328")
        }
    ]
} ]);
db.getCollection("user_info").insert([ {
    _id: ObjectId("60d92a10ceb108083c65cf29"),
    uid: ObjectId("60d92a10ceb108083c65cf28"),
    avatar: "https://z3.ax1x.com/2021/06/22/RZOHpR.png",
    uname: "kdc06j86",
    sex: NumberInt("1"),
    history: [
        {
            rid: ObjectId("60c16569074200005d003199"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        },
        {
            rid: ObjectId("60c16562074200005d003198"),
            imgList: [
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181206/thumb/201812062356234754_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070000233962_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070005391575_700_467.jpg",
                "https://pic.tujia.com/upload/qualifiedpics/day_181207/thumb/201812070008032479_700_467.jpg"
            ],
            title: "近八一制片厂西站肿瘤医院莲花池自然原宿",
            params: {
                attr: "实拍·整套",
                house: NumberInt("2"),
                bed: NumberInt("2"),
                "person_count": NumberInt("4"),
                area: NumberInt("68")
            },
            score: 4.6,
            "score_count": NumberInt("2"),
            "con_title": "优选pro",
            price: NumberInt("600"),
            "new_price": NumberInt("570")
        }
    ]
} ]);

// ----------------------------
// Collection structure for user_login
// ----------------------------
db.getCollection("user_login").drop();
db.createCollection("user_login");
db.getCollection("user_login").createIndex({
    uphone: NumberInt("1")
}, {
    name: "uphone_1",
    unique: true,
    sparse: true
});
db.getCollection("user_login").createIndex({
    umail: NumberInt("1")
}, {
    name: "umail_1",
    unique: true,
    sparse: true
});
db.getCollection("user_login").createIndex({
    "uface_id": NumberInt("1")
}, {
    name: "uface_id_1",
    unique: true,
    sparse: true
});

// ----------------------------
// Documents of user_login
// ----------------------------
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d19ae4d7f56210e0223af1"),
    uname: "zhaoxu",
    uphone: "18338453334",
    upwd: "123456789A"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d19b51d7f56210e0223af6"),
    uname: "ed0513",
    uphone: "17838749537",
    upwd: "zy123456789"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d19d90d7f56210e0223b02"),
    uname: "Ycl123456",
    uphone: "17630902513",
    upwd: "ycl1250364895",
    "uface_id": 1624673270161
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1c91d8fd6a9147cfa214c"),
    uname: "19850",
    uphone: "18538069826",
    upwd: "123456789A"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1d3d565ccce0aa4cfc149"),
    uname: "n3n7gij",
    uphone: "17838727721"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1d97765ccce0aa4cfc152"),
    uname: "alofcf3",
    uphone: "17638838094"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1daff65ccce0aa4cfc157"),
    uname: "6lfajhe",
    uphone: "15831278156"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1dde965ccce0aa4cfc159"),
    uname: "oilo0m6",
    uphone: "17338100335",
    umail: "1593809042@qq.com"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1e5c665ccce0aa4cfc17b"),
    uname: "h1ao4ip",
    uphone: "15738911019"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1e7dc65ccce0aa4cfc181"),
    uname: "k382edc",
    uphone: "15201129973"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1ed1c65ccce0aa4cfc18a"),
    uname: "h7g7nae",
    uphone: "18237152517"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1ed2165ccce0aa4cfc18c"),
    uname: "2i40e18",
    uphone: "15236169161"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1eff665ccce0aa4cfc196"),
    uname: "l42ffb3",
    uphone: "17637621605"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d1f24965ccce0aa4cfc19f"),
    uname: "a85el51",
    uphone: "18351857984",
    "uface_id": 1624694642020
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d2a72424a9f50348d97de4"),
    uname: "k587djg",
    uphone: "18600567853"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d325e11ed29d03ec557686"),
    uname: "7jcjo5o",
    uphone: "18437625003"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d57a1748e5420a7437b77a"),
    uname: "hsueh",
    uphone: "17629886605"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d5d1f3bd49c90f5c767013"),
    uname: "glkc0h6c",
    "uface_id": 1624625650126
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d69627ceb108083c65ce57"),
    uname: "o7j49enh",
    uphone: "13193773579"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d69650ceb108083c65ce59"),
    uname: "io51o3k1",
    "uface_id": 1624675920041
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6bfccceb108083c65ce79"),
    uname: "ah2ohc7c",
    uphone: "15201603213"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6bfdbceb108083c65ce7b"),
    uname: "n2354b8b",
    uphone: "18610820057"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6c0fdceb108083c65ce81"),
    uname: "4f1p162p",
    uphone: "17623699365"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6c134ceb108083c65ce83"),
    uname: "gaowujie2004",
    uphone: "17538590302",
    "uface_id": 1624687183594,
    umail: "1985019435@qq.com"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6c5b3ceb108083c65cea5"),
    uname: "kke9gonm",
    uphone: "15699771397"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6c5e9ceb108083c65ceac"),
    uname: "6m6jj21o",
    uphone: "17612474844"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6c68bceb108083c65ceb1"),
    uname: "k14obh3b",
    "uface_id": 1624688267395
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6c76aceb108083c65cec0"),
    uname: "24hdfho7",
    uphone: "13700838244"
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d6d070ceb108083c65cefb"),
    uname: "eeai0idg",
    uphone: "13271552553",
    "uface_id": 1624867717714
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d7f44dceb108083c65cf1a"),
    uname: "g0dpeo7h",
    "uface_id": 1624765517158
} ]);
db.getCollection("user_login").insert([ {
    _id: ObjectId("60d92a10ceb108083c65cf28"),
    uname: "kdc06j86",
    uphone: "15515569145"
} ]);
