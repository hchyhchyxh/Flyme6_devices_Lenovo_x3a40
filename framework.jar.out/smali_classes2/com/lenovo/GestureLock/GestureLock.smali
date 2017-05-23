.class public Lcom/lenovo/GestureLock/GestureLock;
.super Ljava/lang/Object;
.source "GestureLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/GestureLock/GestureLock$GestureHandler;,
        Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;
    }
.end annotation


# static fields
.field private static final MSG_DISABLE_GESTURE_FUNCTION:I = 0x1

.field private static final MSG_ENABLE_GESTURE_FUNCTION:I = 0x0

.field private static final MSG_INIT_GESTURE_FUNCTION:I = 0x2

.field private static final SENSOR_TYPE_BASE:I = 0x1fa2638

.field private static final TAG:Ljava/lang/String; = "GestureLock"

.field private static final TYPE_GESTURE:I = 0x1fa263b

.field private static mGestureAlertEnable:Z

.field private static mGestureSensorEnable:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureSensor:Landroid/hardware/Sensor;

.field mGestureSensorListener:Landroid/hardware/SensorEventListener;

.field private mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mPSensorListener:Landroid/hardware/SensorEventListener;

.field mPowerManager:Landroid/os/PowerManager;

.field private mResolver:Landroid/content/ContentResolver;

.field mSensorEnabled:Z

.field mSensorManager:Landroid/hardware/SensorManager;

.field mSettingsObserver:Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

.field mTelecomManager:Landroid/telecom/TelecomManager;

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    .line 46
    sput-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensor:Landroid/hardware/Sensor;

    .line 35
    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    iput-boolean v2, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 147
    new-instance v0, Lcom/lenovo/GestureLock/GestureLock$2;

    invoke-direct {v0, p0}, Lcom/lenovo/GestureLock/GestureLock$2;-><init>(Lcom/lenovo/GestureLock/GestureLock;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mPSensorListener:Landroid/hardware/SensorEventListener;

    .line 154
    new-instance v0, Lcom/lenovo/GestureLock/GestureLock$3;

    invoke-direct {v0, p0}, Lcom/lenovo/GestureLock/GestureLock$3;-><init>(Lcom/lenovo/GestureLock/GestureLock;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorListener:Landroid/hardware/SensorEventListener;

    .line 55
    iput-object p1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GestureLock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;-><init>(Lcom/lenovo/GestureLock/GestureLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    .line 59
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->sendEmptyMessage(I)Z

    .line 60
    iput-boolean v2, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/GestureLock/GestureLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/GestureLock/GestureLock;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/GestureLock/GestureLock;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z

    return p0
.end method

.method static synthetic access$300(Lcom/lenovo/GestureLock/GestureLock;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/GestureLock/GestureLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/GestureLock/GestureLock;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 64
    const-string v1, "GestureLock"

    const-string v2, "init Gesture function..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 66
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mVibrator:Landroid/os/Vibrator;

    .line 67
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mPowerManager:Landroid/os/PowerManager;

    .line 68
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    iput-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 69
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa263b

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensor:Landroid/hardware/Sensor;

    .line 70
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mResolver:Landroid/content/ContentResolver;

    .line 71
    new-instance v1, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

    iget-object v2, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;-><init>(Lcom/lenovo/GestureLock/GestureLock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSettingsObserver:Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

    .line 72
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSettingsObserver:Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

    invoke-virtual {v1}, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;->observe()V

    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/lenovo/GestureLock/GestureLock$1;

    invoke-direct {v2, p0}, Lcom/lenovo/GestureLock/GestureLock$1;-><init>(Lcom/lenovo/GestureLock/GestureLock;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GestureLock"

    const-string v2, "couldn\'t registerUserSwitchObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string v1, "GestureLock"

    const-string v2, "in update"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "flip_lock_screen_data"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    .line 121
    const-string v0, "GestureLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in update mGestureAlertEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/lenovo/GestureLock/GestureLock;->enable()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/GestureLock/GestureLock;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 145
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 130
    sget-boolean v1, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    if-eqz v1, :cond_0

    .line 131
    iget-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 137
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
