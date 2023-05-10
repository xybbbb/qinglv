var botui = new BotUI("botui");
botui.message.bot({
    delay: 200,
    content: "hi，欢迎来到这里😄"
}).then(function() {
    return botui.message.bot({
        delay: 1000,
        content: "我是可爱的聊天机器人🤖"
    })
}).then(function() {
    return botui.message.bot({
        delay: 1000,
        content: "我将为你介绍小刘跟瑶瑶的恋爱故事"
    })
}).then(function() {
    return botui.action.button({
        delay: 1500,
        action: [{
            text: "那么开始吧！",
            value: "nmksb"
        },
        {
            text: "不感兴趣",
            value: "bgxq"
        }]
    })
}).then(function(res) {
    if (res.value == "nmksb") {
        nmksb()
    }
    if (res.value == "bgxq") {
        bgxq()
    }
});
//那么开始吧
var nmksb = function() {
    botui.message.bot({
        delay: 1500,
        content: "想要了解什么呢？🤔"
    }).then(function() {
        return botui.message.bot({
            delay: 1500,
            content: "是关于小站？"
        })
    }).then(function() {
        return botui.message.bot({
            delay: 1500,
            content: "还是关于这对情侣呢？"
        })
    }).then(function() {
        return botui.action.button({
            delay: 1500,
            action: [{
                text: "关于小站",
                value: "gyxz"
            },
            {
                text: "关于这对情侣",
                value: "gyzdql"
            }]
        })
    }).then(function(res) {
        if (res.value == "gyxz") {
            gyxz()
        }
        if (res.value == "gyzdql") {
            gyzdql()
        }
    });
    var gyxz = function() {
        botui.message.bot({
            delay: 1500,
            content: "本站恋爱网站是小刘送给瑶瑶的礼物🎁"
        }).then(function() {
            return botui.message.bot({
                delay: 1500,
                content: "希望两人能在这虚拟的网络世界有一块自留地"
            })
        }).then(function() {
            return botui.message.bot({
                delay: 1500,
                content: "记录他们的生活点滴🍵"
            })
        }).then(function() {
            return botui.action.button({
                delay: 1500,
                action: [{
                    text: "这个恋爱网站有什么功能呢",
                    value: "gn"
                }]
            })
        }).then(function(res) {
            if (res.value == "gn") {
                gn()
            }
        });
        var gn = function() {
            botui.message.bot({
                delay: 1500,
                content: "本站有几大模块"
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "关于：引用机器人介绍"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "点点滴滴：两人记录生活的地方"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "时光机：发表说说短文字"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "相册🖼：存放照片与记忆"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "恋爱笔记：两人想完成的❤️恋爱❤️清单📝"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "祝福板：访客留言区🗒︎"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "都介绍完了，还不赶紧去小站的其他地方转转，顺手在祝福板留着评论的足迹吧"
                })
            })
        }
        // gn结尾
    } 
    // gyxz结尾
    var gyzdql = function() {
        botui.message.bot({
            delay: 1500,
            content: "男主叫小刘"
        }).then(function() {
            return botui.message.bot({
                delay: 1500,
                content: "女主叫瑶瑶"
            })
        }).then(function() {
            return botui.action.button({
                delay: 1500,
                action: [{
                    text: "小刘和瑶瑶是怎么认识的？",
                    value: "zmrs"
                }]
            })
        }).then(function(res) {
            if (res.value == "zmrs") {
                zmrs()
            }
        });
        var zmrs = function() {
            botui.message.bot({
                delay: 1500,
                content: "两人相识于2020年"
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "我们是一个班的"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "我们开始在一个班的时候，其实都是互相看对方不爽"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "然后也是我们班的班主任让瑶瑶多跟玩！"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "慢慢的我俩就产生了那种好感"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "后来瑶瑶就向小刘表白了"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "然后第一次小刘拒绝了，但是第二次小刘就同意了！小刘也希望，我们两个可以一直走下去"
                })
            }).then(function() {
                return botui.message.bot({
                    delay: 1500,
                    content: "写于2022年6月5日 18:46:30 未完"
                })
            })
        }
        //zmrs

    }
  // gyzdql结尾
    
    
    /*结尾 */
}


//结束
  var bgxq = function() {
    botui.message.bot({
        delay: 1500,
        content: "感谢访问小站"
    })
}