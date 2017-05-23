.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final FACTORY_DEVICE_PROVISIONED:Ljava/lang/String; = "is_factory_device_provisioned"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 127
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 129
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 146
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->recoverSystemProvivion(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic access$500()Lcom/android/server/power/ShutdownThread;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 440
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 441
    :try_start_0
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_0

    .line 442
    const-string v5, "ShutdownThread"

    const-string v7, "Shutdown sequence already running, returning."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    monitor-exit v6

    .line 575
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 446
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    const-string v5, "recovery"

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    new-instance v5, Ljava/io/File;

    const-string v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 455
    :cond_1
    const/4 v2, 0x0

    .line 456
    .local v2, "isSilentShutdown":Z
    const-string v5, "persist.sys.shutdown_silently"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 457
    const/4 v2, 0x1

    .line 470
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 472
    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    .line 477
    .local v3, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 478
    .local v0, "audioMgr":Landroid/media/AudioManager;
    const/4 v5, 0x7

    invoke-virtual {v0, v3, v5, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 481
    .end local v0    # "audioMgr":Landroid/media/AudioManager;
    .end local v3    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :cond_3
    const-string v5, "sys.power.startup_mode"

    const-string v6, "poweroff"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v5, "service.bootanim.done"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v5, "service.bootanim.exit"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    if-eqz v2, :cond_6

    .line 489
    const-string v5, "ctl.start"

    const-string v6, "bootanim:silent"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_2
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v5, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 543
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 546
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    :try_start_1
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "ShutdownThread-cpu"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 550
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 551
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    :goto_3
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 559
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 561
    :try_start_2
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v7, 0x1a

    const-string v8, "ShutdownThread-screen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 563
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 564
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 572
    :cond_4
    :goto_4
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v6, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v6}, Lcom/android/server/power/ShutdownThread$7;-><init>()V

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 574
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 446
    .end local v2    # "isSilentShutdown":Z
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 458
    .restart local v2    # "isSilentShutdown":Z
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112005a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 462
    .local v4, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_2

    .line 463
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v2

    goto/16 :goto_1

    .line 491
    .end local v4    # "phone":Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v5, "ctl.start"

    const-string v6, "bootanim"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3

    .line 565
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 566
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 9
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1079
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 1081
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1084
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "rebootOrShutdown"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1085
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1096
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1086
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 1087
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebootOrShutdown method not found in class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1091
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 1092
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1088
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    .line 1089
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "ShutdownThread"

    const-string v6, "Unknown exception hit while trying to invode rebootOrShutdown"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1093
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 1094
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "Unknown exception while trying to invoke rebootOrShutdown"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistBootanimVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 1099
    iget-object v5, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    const-string v5, "persist.sys.bootupvolume"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1103
    .local v0, "bootupVolume":I
    iget-object v5, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 1105
    .local v4, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 1108
    invoke-virtual {v4}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    .line 1109
    .local v1, "isMasterMute":Z
    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 1110
    .local v2, "isRingMute":Z
    invoke-virtual {v4}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v3

    .line 1111
    .local v3, "isSilent":Z
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 1112
    :cond_2
    const-string v5, "persist.sys.bootupvolume"

    const-string v6, "-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1114
    :cond_3
    const-string v5, "persist.sys.bootupvolume"

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 394
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 395
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 396
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 397
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 407
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 408
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 904
    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 916
    const-string v7, "ShutdownThread"

    const-string v8, "waiting for poweroff animation finished.."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 918
    .local v4, "start":J
    const/4 v1, 0x0

    .line 922
    .local v1, "steps":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0x32

    if-gt v1, v7, :cond_0

    :try_start_0
    const-string v7, "service.bootanim.done"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 925
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 926
    .local v2, "end":J
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waiting animation :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7, v12}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 937
    if-eqz p0, :cond_1

    .line 940
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    new-instance v6, Landroid/os/SystemVibrator;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 943
    .local v6, "vibrator":Landroid/os/Vibrator;
    :goto_1
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-virtual {v6, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 951
    :goto_2
    const-wide/16 v8, 0x1f4

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 956
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    :goto_3
    if-eqz p1, :cond_4

    .line 957
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rebooting, reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :try_start_3
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 997
    :goto_4
    return-void

    .line 929
    .end local v2    # "end":J
    :cond_2
    const-wide/16 v8, 0x64

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    const-string v8, "interrupted exception occurred"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 940
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "end":J
    :cond_3
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    goto :goto_1

    .line 944
    .restart local v6    # "vibrator":Landroid/os/Vibrator;
    :catch_1
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    const-string v8, "Failed to vibrate during shutdown."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :catch_2
    move-exception v0

    .line 961
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    const-string v8, "Reboot failed, will attempt shutdown instead"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 965
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v7, "ShutdownThread"

    const-string v8, "Performing low-level shutdown..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v7, "ShutdownThread"

    const-string v8, "[SHTDWN] rebootOrShutdown, shutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_4

    .line 952
    .restart local v6    # "vibrator":Landroid/os/Vibrator;
    :catch_3
    move-exception v7

    goto :goto_3
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x1

    .line 418
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 419
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 423
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 424
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 425
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 426
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 436
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private static recoverSystemProvivion(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_factory_device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "isfactoryMode":I
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecoverSystemProvision  factoryMode status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-ne v0, v6, :cond_0

    .line 171
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lenovo.setupwizard"

    const-string v3, "com.lenovo.setupwizard.DefaultActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_setup_complete"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    .end local v0    # "isfactoryMode":I
    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 157
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 158
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 159
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 160
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 187
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v14

    .line 188
    :try_start_0
    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v13, :cond_0

    .line 189
    const-string v13, "ShutdownThread"

    const-string v15, "Request to shutdown already running, returning."

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v14

    .line 361
    :goto_0
    return-void

    .line 192
    :cond_0
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const/4 v10, 0x0

    .line 198
    .local v10, "newAlarmSet":Z
    const-string v2, ""

    .line 202
    .local v2, "alarmTime":Ljava/lang/String;
    const-string v13, "row"

    const-string v14, "ro.lenovo.region"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 203
    const-string v13, "unencrypted"

    const-string v14, "ro.crypto.state"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "next_alarm_formatted_poweronalarm"

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 207
    const/4 v10, 0x1

    .line 231
    :cond_1
    :goto_1
    if-eqz v10, :cond_6

    const v12, 0x90c002c

    .line 234
    .local v12, "shutdownConfirmStringResId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0048

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 239
    .local v9, "longPressBehavior":I
    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v13, :cond_7

    const v11, 0x1040130

    .line 247
    .local v11, "resourceId":I
    :goto_3
    const-string v13, "ShutdownThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz p1, :cond_a

    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v13, :cond_a

    .line 262
    new-instance v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 263
    .local v3, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v13, :cond_2

    .line 264
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->dismiss()V

    .line 266
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 267
    .local v4, "confirmFormat":Ljava/lang/CharSequence;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    const v13, 0x90302d2

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v13, :cond_9

    const v13, 0x104012f

    :goto_4
    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1040013

    new-instance v15, Lcom/android/server/power/ShutdownThread$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1040009

    new-instance v15, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v15}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    sput-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 296
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v13, v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 297
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 298
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7d9

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 299
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 192
    .end local v2    # "alarmTime":Ljava/lang/String;
    .end local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v4    # "confirmFormat":Ljava/lang/CharSequence;
    .end local v9    # "longPressBehavior":I
    .end local v10    # "newAlarmSet":Z
    .end local v11    # "resourceId":I
    .end local v12    # "shutdownConfirmStringResId":I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 211
    .restart local v2    # "alarmTime":Ljava/lang/String;
    .restart local v10    # "newAlarmSet":Z
    :cond_3
    const-string v13, "persist.sys.rtc_alarm_time"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    .line 213
    const/4 v10, 0x1

    .line 214
    new-instance v5, Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 215
    .local v5, "date":Ljava/util/Date;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    .line 216
    .local v8, "is24Format":Z
    const/4 v7, 0x0

    .line 217
    .local v7, "format":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 218
    const-string v7, "E HH:mm"

    .line 222
    :goto_5
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 224
    goto/16 :goto_1

    .line 220
    .end local v6    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_4
    const-string v7, "E hh:mma"

    goto :goto_5

    .line 225
    .end local v5    # "date":Ljava/util/Date;
    .end local v7    # "format":Ljava/lang/String;
    .end local v8    # "is24Format":Z
    :cond_5
    const/4 v10, 0x0

    .line 226
    const-string v2, ""

    goto/16 :goto_1

    .line 231
    :cond_6
    const v12, 0x104012d

    goto/16 :goto_2

    .line 239
    .restart local v9    # "longPressBehavior":I
    .restart local v12    # "shutdownConfirmStringResId":I
    :cond_7
    const/4 v13, 0x2

    if-ne v9, v13, :cond_8

    const v11, 0x104012e

    goto/16 :goto_3

    :cond_8
    move v11, v12

    goto/16 :goto_3

    .line 267
    .restart local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v4    # "confirmFormat":Ljava/lang/CharSequence;
    .restart local v11    # "resourceId":I
    :cond_9
    const v13, 0x1040122

    goto/16 :goto_4

    .line 300
    .end local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v4    # "confirmFormat":Ljava/lang/CharSequence;
    :cond_a
    if-eqz p1, :cond_d

    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v13, :cond_d

    .line 301
    new-instance v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 302
    .restart local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    const v13, 0x90302d2

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v13, :cond_b

    const v13, 0x104012f

    :goto_6
    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v13, :cond_c

    const v13, 0x1040130

    :goto_7
    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x104000a

    new-instance v15, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/high16 v14, 0x1040000

    new-instance v15, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v15}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    sput-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 325
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7d9

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 327
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v13, v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 328
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 302
    :cond_b
    const v13, 0x90c002d

    goto :goto_6

    :cond_c
    const v13, 0x90c002e

    goto :goto_7

    .line 331
    .end local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    .line 778
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v2, v6, v8

    .line 779
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 780
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$11;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$11;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 885
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 887
    int-to-long v6, p1

    :try_start_0
    invoke-virtual {v0, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 891
    const-string v1, "ShutdownThread"

    const-string v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    return-void

    .line 888
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private uncrypt()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1000
    const-string v2, "ShutdownThread"

    const-string v3, "Calling uncrypt and monitoring the progress..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v2, 0x1

    new-array v0, v2, [Z

    .line 1003
    .local v0, "done":[Z
    aput-boolean v4, v0, v4

    .line 1004
    new-instance v1, Lcom/android/server/power/ShutdownThread$12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownThread$12;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .line 1066
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1069
    const-wide/32 v2, 0xdbba0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    aget-boolean v2, v0, v4

    if-nez v2, :cond_0

    .line 1073
    const-string v2, "ShutdownThread"

    const-string v3, "Timed out waiting for uncrypt."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    return-void

    .line 1070
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 580
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 581
    monitor-exit v1

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 24

    .prologue
    .line 589
    new-instance v6, Lcom/android/server/power/ShutdownThread$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 598
    .local v6, "br":Landroid/content/BroadcastReceiver;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->persistBootanimVolume()V

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_a

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 608
    .local v22, "reason":Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v2, "sys.power.off"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 624
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v18, v2, v4

    .line 646
    .local v18, "endTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 647
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v18, v4

    .line 649
    .local v12, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_c

    .line 650
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v12    # "delay":J
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    .line 664
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 667
    :cond_2
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 671
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    .line 673
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 677
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_4

    .line 678
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 681
    :cond_4
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down package manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/PackageManagerService;

    .line 685
    .local v21, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v21, :cond_5

    .line 686
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 688
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    .line 689
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 693
    :cond_6
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 694
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_7

    .line 695
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 699
    :cond_7
    new-instance v20, Lcom/android/server/power/ShutdownThread$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 706
    .local v20, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long v16, v2, v4

    .line 711
    .local v16, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 713
    :try_start_2
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v15

    .line 715
    .local v15, "mount":Landroid/os/storage/IMountService;
    if-eqz v15, :cond_e

    .line 716
    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 723
    .end local v15    # "mount":Landroid/os/storage/IMountService;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_8

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v16, v4

    .line 725
    .restart local v12    # "delay":J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_f

    .line 726
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v12    # "delay":J
    :cond_8
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 741
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_9

    .line 742
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 745
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 758
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 759
    return-void

    .line 607
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v16    # "endShutTime":J
    .end local v18    # "endTime":J
    .end local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v21    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v22    # "reason":Ljava/lang/String;
    :cond_a
    const-string v2, "0"

    goto/16 :goto_0

    :cond_b
    const-string v2, ""

    goto/16 :goto_1

    .line 652
    .restart local v12    # "delay":J
    .restart local v18    # "endTime":J
    .restart local v22    # "reason":Ljava/lang/String;
    :cond_c
    :try_start_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_d

    .line 653
    const-wide/16 v4, 0x2710

    sub-long/2addr v4, v12

    long-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double/2addr v4, v8

    double-to-int v0, v4

    move/from16 v23, v0

    .line 655
    .local v23, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x0

    move/from16 v0, v23

    invoke-direct {v2, v0, v4}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 658
    .end local v23    # "status":I
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 659
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 662
    .end local v12    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 718
    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v15    # "mount":Landroid/os/storage/IMountService;
    .restart local v16    # "endShutTime":J
    .restart local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v21    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_e
    :try_start_7
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 720
    .end local v15    # "mount":Landroid/os/storage/IMountService;
    :catch_1
    move-exception v14

    .line 721
    .local v14, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 740
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 728
    .restart local v12    # "delay":J
    :cond_f
    :try_start_9
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_10

    .line 729
    const-wide/16 v4, 0x4e20

    sub-long/2addr v4, v12

    long-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    const-wide v8, 0x40d3880000000000L    # 20000.0

    div-double/2addr v4, v8

    double-to-int v0, v4

    move/from16 v23, v0

    .line 732
    .restart local v23    # "status":I
    add-int/lit8 v23, v23, 0x12

    .line 733
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x0

    move/from16 v0, v23

    invoke-direct {v2, v0, v4}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 736
    .end local v23    # "status":I
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_4

    .line 737
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 674
    .end local v12    # "delay":J
    .end local v16    # "endShutTime":J
    .end local v20    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v21    # "pm":Lcom/android/server/pm/PackageManagerService;
    :catch_3
    move-exception v2

    goto/16 :goto_3
.end method
