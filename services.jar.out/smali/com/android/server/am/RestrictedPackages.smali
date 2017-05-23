.class final Lcom/android/server/am/RestrictedPackages;
.super Ljava/lang/Object;
.source "RestrictedPackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;,
        Lcom/android/server/am/RestrictedPackages$MyHandler;
    }
.end annotation


# static fields
.field private static final ATTR_FORCE_STATE:Ljava/lang/String; = "force_state"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final DEBUG:Z = true

.field private static final MSG_SAVE:I = 0x238c

.field public static final RESTRICTED_SERVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RestrictedPackages"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_ROOT:Ljava/lang/String; = "restricted_packages"

.field private static final VAL_FORCE_CLEANED:Ljava/lang/String; = "force"

.field private static final VAL_NOT_FORCE_CLEANED:Ljava/lang/String; = "not_force"

.field private static final VAL_NOT_STOPPED:Ljava/lang/String; = "not_stopped"

.field private static final VAL_STOPPED:Ljava/lang/String; = "stopped"


# instance fields
.field private final mHandler:Lcom/android/server/am/RestrictedPackages$MyHandler;

.field private final mUserRestrictedPkgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    .line 450
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.igexin.sdk.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.igexin.sdk.PushServiceUser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.android.pushservice.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.taobao.agoo.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.ucweb.message.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "cn.jpush.android.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.lib.push.PPPushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.leadeon.cmcc.cservice.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.sina.push.service.SinaPushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.youku.pushsdk.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.qzonex.component.wns.push.QzonePushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe.support.qpush.QihooPushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "cn.kuwo.mod.push.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.ccb.android.yxpush.aidl.YXRemotePushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.yy.pushsvc.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.dianping.base.push.pushservice.dp.DPPushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.dianping.base.push.pushservice.dp.FakeService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.iqiyi.sdk.android.pushservice.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.video.push.VSPushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.sohu.inputmethod.sogou.push.PushReceiveService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.shoujiduoduo.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.netease.pushservice.core.PushServiceNews_V1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.xiaomi.push.service.XMPushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.huawei.android.pushagent.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.tencent.android.tpush.service.XGPushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.tencent.reading.push.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.tencent.news.push.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "anetwork.channel.aidl.NetworkService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "cn.jpush.android.service.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "cn.play.dserv.DService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.alibaba.poplayer.utils.PopLayerConsole"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.alimama.mobile.sdk.shell.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.alimusic.dipper.DipperService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.alipay.mobile.command.trigger.NotifyTrigger"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.amap.api.service.AMapService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.android.coll.s.CollService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.android.pushservice.CommandService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.dq.advertise.download.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.location.f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.music.push.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.sapi2.share.ShareService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.shucheng91.download.DownloadManagerService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.dianxinos.launcher2.dxwidget.DXWidgetProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.duanqu.qupai.recorder.TranscodeService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.duomi.dms.core.DMBubbleService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.duomi.dms.core.DMCoreService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.idswz.plugin.service.PluginService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.igexin.sdk.coordinator.SdkMsgService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.igexin.sdk.SdkMainService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.laiwang.protocol.android.LWPService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.mob.tools.MobUIShell"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.pokercity.byol.PokerService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.pp.plugin.appstore.receiver.PPActiveReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.pp.plugin.appstore.receiver.PPNetworkReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.pp.plugin.appstore.service.PPLaunchService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.pp.plugin.appstore.worker.PPNotifDelService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.qihoo.appstore.updatelib.CheckUpdateService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.qq.e.comm.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.sina.weibo.sdk.net.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.skynet.android.report.DataReportService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.taobao.accs.ChannelService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.taobao.agoo.TaobaoMessageIntentReceiverService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.taobao.munion.base.download.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.tencent.wns.service.WnsMain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.common.net.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.ElectionReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.MessageReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.RegistrationReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.SystemReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.UmengMessageBootReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.UmengMessageCallbackHandlerService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.UmengMessageIntentReceiverService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.message.UmengService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.umeng.update.net.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.vungle.publisher.VungleService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.wns.daemon.foreservice.FakeForeGroundService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.xiaomi.push.service.receivers.MIPushMessageHandler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.xiaomi.push.service.receivers.NetworkStatusReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.xiaomi.push.service.receivers.PingReceiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.youku.gamecenter.download.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.youku.libmanager.SoUpgradeService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "mm.purchasesdk.iapservice.PurchaseService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "mtopsdk.xstate.XStateService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "oicq.wlogin_sdk.sharemem.sharemem_service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "org.android.agoo.service.ElectionService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "org.qiyi.android.commonphonepad.pushmessage.PushMessageService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "org.qiyi.android.plugin.ipc.PluginBootHelpService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.dianxinos.optimizer.module.paysecurity.PaySecurityService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.waimai.link.HostService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.kspush.KsPushServiceWaker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.kspush.KsWebSocketService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/android/server/am/RestrictedPackages;->RESTRICTED_SERVICES:Ljava/util/Set;

    const-string v1, "com.baidu.video.sdk.net.trafficmonitor.TrafficMonitorService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    .line 95
    const-string v0, "RestrictedPackages"

    const-string v1, "RestrictedPackages init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/android/server/am/RestrictedPackages$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/RestrictedPackages$MyHandler;-><init>(Lcom/android/server/am/RestrictedPackages;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackages;->mHandler:Lcom/android/server/am/RestrictedPackages$MyHandler;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/RestrictedPackages;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestrictedPackages;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackages;->saveAllSettings()V

    return-void
.end method

.method private getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    monitor-enter v2

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    .line 106
    .local v0, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    .end local v0    # "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    invoke-direct {v0, p1}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;-><init>(I)V

    .line 108
    .restart local v0    # "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    iget-object v1, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    :cond_0
    monitor-exit v2

    .line 111
    return-object v0

    .line 110
    .end local v0    # "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveAllSettings()V
    .locals 6

    .prologue
    .line 298
    iget-object v5, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    monitor-enter v5

    .line 299
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 300
    .local v3, "userPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 302
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 303
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    .line 304
    .local v2, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    # invokes: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->writeSettings()V
    invoke-static {v2}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$200(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    .end local v3    # "userPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 306
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v3    # "userPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;>;"
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 307
    return-void
.end method

.method private saveSettingsDelayed(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "longDelay"    # Z

    .prologue
    const/16 v2, 0x238c

    .line 310
    iget-object v1, p0, Lcom/android/server/am/RestrictedPackages;->mHandler:Lcom/android/server/am/RestrictedPackages$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/RestrictedPackages$MyHandler;->removeMessages(I)V

    .line 311
    iget-object v1, p0, Lcom/android/server/am/RestrictedPackages;->mHandler:Lcom/android/server/am/RestrictedPackages$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/RestrictedPackages$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/RestrictedPackages;->mHandler:Lcom/android/server/am/RestrictedPackages$MyHandler;

    if-eqz p2, :cond_0

    const-wide/32 v2, 0x1b7740

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/RestrictedPackages$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 313
    return-void

    .line 312
    :cond_0
    const-wide/16 v2, 0x2710

    goto :goto_0
.end method


# virtual methods
.method public getRestrictedPackages(IIZ)Ljava/util/List;
    .locals 6
    .param p1, "restrictions"    # I
    .param p2, "userId"    # I
    .param p3, "excludingStopped"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/RestrictedPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/RestrictedPackageInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v3

    .line 177
    .local v3, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-object v1

    .line 179
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 180
    :try_start_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_1

    monitor-exit v5

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 182
    :cond_1
    :try_start_1
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RestrictedPackageInfo;

    .line 183
    .local v2, "ps":Landroid/app/RestrictedPackageInfo;
    if-eqz p3, :cond_3

    iget-boolean v4, v2, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    if-nez v4, :cond_2

    .line 184
    :cond_3
    iget v4, v2, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 185
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v2    # "ps":Landroid/app/RestrictedPackageInfo;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPackageRestricted(III)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "restrictions"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-direct {p0, p3}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v2

    .line 161
    .local v2, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v2, :cond_0

    .line 169
    :goto_0
    return v3

    .line 163
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 164
    :try_start_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RestrictedPackageInfo;

    .line 165
    .local v1, "ps":Landroid/app/RestrictedPackageInfo;
    iget v5, v1, Landroid/app/RestrictedPackageInfo;->mUid:I

    if-ne v5, p1, :cond_1

    iget v5, v1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    .line 166
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 170
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 169
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPackageRestricted(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, p3}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v0

    .line 147
    .local v0, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v0, :cond_0

    .line 154
    :goto_0
    return v2

    .line 149
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 150
    :try_start_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RestrictedPackageInfo;

    .line 151
    .local v1, "vps":Landroid/app/RestrictedPackageInfo;
    if-eqz v1, :cond_2

    .line 152
    iget v4, v1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 156
    .end local v1    # "vps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 154
    .restart local v1    # "vps":Landroid/app/RestrictedPackageInfo;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPackageStopped(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0, p2}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v1

    .line 195
    .local v1, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v1, :cond_0

    .line 204
    :goto_0
    return v2

    .line 197
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 198
    :try_start_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RestrictedPackageInfo;

    .line 200
    .local v0, "ps":Landroid/app/RestrictedPackageInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/RestrictedPackageInfo;->isBackgroundRunningRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    iget-boolean v2, v0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    monitor-exit v3

    goto :goto_0

    .line 203
    .end local v0    # "ps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "ps":Landroid/app/RestrictedPackageInfo;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public saveSettingsNow()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackages;->mHandler:Lcom/android/server/am/RestrictedPackages$MyHandler;

    const/16 v1, 0x238c

    invoke-virtual {v0, v1}, Lcom/android/server/am/RestrictedPackages$MyHandler;->removeMessages(I)V

    .line 293
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackages;->saveAllSettings()V

    .line 294
    return-void
.end method

.method public setPackageRestricted(Ljava/lang/String;IIZI)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "restrictions"    # I
    .param p4, "restricted"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 115
    const-string v2, "RestrictedPackages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPackageRestricted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, p5}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v0

    .line 118
    .local v0, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 120
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 121
    if-eqz p4, :cond_3

    .line 122
    :try_start_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RestrictedPackageInfo;

    .line 123
    .local v1, "vps":Landroid/app/RestrictedPackageInfo;
    if-eqz v1, :cond_2

    .line 124
    iget v2, v1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    .line 139
    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/4 v2, 0x0

    invoke-direct {p0, p5, v2}, Lcom/android/server/am/RestrictedPackages;->saveSettingsDelayed(IZ)V

    goto :goto_0

    .line 126
    :cond_2
    :try_start_1
    new-instance v1, Landroid/app/RestrictedPackageInfo;

    .end local v1    # "vps":Landroid/app/RestrictedPackageInfo;
    invoke-direct {v1, p1, p2, p3}, Landroid/app/RestrictedPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 127
    .restart local v1    # "vps":Landroid/app/RestrictedPackageInfo;
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    .end local v1    # "vps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 130
    :cond_3
    :try_start_2
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RestrictedPackageInfo;

    .line 131
    .restart local v1    # "vps":Landroid/app/RestrictedPackageInfo;
    if-eqz v1, :cond_1

    .line 132
    iget v2, v1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    xor-int/lit8 v4, p3, -0x1

    and-int/2addr v2, v4

    iput v2, v1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    .line 134
    iget v2, v1, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    if-nez v2, :cond_1

    .line 135
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setPackageStopped(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stopped"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 208
    invoke-direct {p0, p3}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v1

    .line 209
    .local v1, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 211
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 212
    :try_start_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RestrictedPackageInfo;

    .line 214
    .local v0, "ps":Landroid/app/RestrictedPackageInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/RestrictedPackageInfo;->isBackgroundRunningRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iput-boolean p2, v0, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    .line 217
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/am/RestrictedPackages;->saveSettingsDelayed(IZ)V

    .line 219
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "ps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public size(I)I
    .locals 9
    .param p1, "restrictions"    # I

    .prologue
    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "size":I
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    monitor-enter v7

    .line 225
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 226
    .local v5, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 227
    iget-object v6, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    .line 228
    .local v4, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RestrictedPackageInfo;

    .line 230
    .local v2, "ps":Landroid/app/RestrictedPackageInfo;
    iget v6, v2, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_0

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    .end local v2    # "ps":Landroid/app/RestrictedPackageInfo;
    :cond_1
    monitor-exit v8

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6

    .line 236
    .end local v0    # "i":I
    .end local v4    # "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    .end local v5    # "userSize":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v0    # "i":I
    .restart local v5    # "userSize":I
    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 237
    return v3
.end method

.method public trimPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 241
    const-string v2, "RestrictedPackages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p2}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v0

    .line 244
    .local v0, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 247
    :try_start_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RestrictedPackageInfo;

    .line 248
    .local v1, "vps":Landroid/app/RestrictedPackageInfo;
    if-eqz v1, :cond_1

    .line 249
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/am/RestrictedPackages;->saveSettingsDelayed(IZ)V

    goto :goto_0

    .line 251
    .end local v1    # "vps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public trimUid(II)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 258
    const-string v5, "RestrictedPackages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trimUid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p2}, Lcom/android/server/am/RestrictedPackages;->getUserRestrictedPackages(I)Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    move-result-object v4

    .line 261
    .local v4, "urp":Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
    if-nez v4, :cond_0

    .line 280
    :goto_0
    return-void

    .line 263
    :cond_0
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 264
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, "pkgsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RestrictedPackageInfo;

    .line 266
    .local v3, "ps":Landroid/app/RestrictedPackageInfo;
    iget v5, v3, Landroid/app/RestrictedPackageInfo;->mUid:I

    if-ne v5, p1, :cond_1

    .line 267
    iget-object v5, v3, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkgsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 271
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pkgsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 273
    # getter for: Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 276
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const/4 v5, 0x0

    invoke-direct {p0, p2, v5}, Lcom/android/server/am/RestrictedPackages;->saveSettingsDelayed(IZ)V

    goto :goto_0
.end method

.method public trimUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackages;->mUserRestrictedPkgs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 285
    monitor-exit v1

    .line 289
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
