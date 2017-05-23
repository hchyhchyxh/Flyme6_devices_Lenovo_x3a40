.class public Lcom/android/server/SmartIrService;
.super Lcom/peel/ISmartIrService$Stub;
.source "SmartIrService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "SmartIrService"

.field private static failureMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/peel/IReceiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/peel/ITransmitCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHal:J

.field private final mHalLock:Ljava/lang/Object;

.field private mIrObj:Lcom/android/server/SmartIrJni;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    .line 27
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    .line 28
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    .line 36
    sget-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Transmit HAL problem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Transmit mode unsupported"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "Transmit canceled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "Receiving HAL problem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const-string v2, "Receiving timeout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "Receiving corrupt data"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    const/16 v1, 0x68

    const-string v2, "Receiving canceled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Lcom/peel/ISmartIrService$Stub;-><init>()V

    .line 34
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/SmartIrService;->mHalLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/android/server/SmartIrService;->mContext:Landroid/content/Context;

    .line 47
    new-instance v1, Lcom/android/server/SmartIrJni;

    invoke-direct {v1}, Lcom/android/server/SmartIrJni;-><init>()V

    iput-object v1, p0, Lcom/android/server/SmartIrService;->mIrObj:Lcom/android/server/SmartIrJni;

    .line 48
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 49
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SmartIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SmartIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    iget-object v1, p0, Lcom/android/server/SmartIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 52
    iget-object v1, p0, Lcom/android/server/SmartIrService;->mIrObj:Lcom/android/server/SmartIrJni;

    invoke-virtual {v1}, Lcom/android/server/SmartIrJni;->halOpen()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/SmartIrService;->mHal:J

    .line 53
    iget-object v1, p0, Lcom/android/server/SmartIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.peel.smartir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-wide v2, p0, Lcom/android/server/SmartIrService;->mHal:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_SMART_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    iget-wide v2, p0, Lcom/android/server/SmartIrService;->mHal:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_SMART_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    return-void
.end method

.method public static receiveCallbackOnFailure(I)V
    .locals 5
    .param p0, "statusCode"    # I

    .prologue
    .line 193
    sget-object v4, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 194
    .local v3, "numCb":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 198
    :try_start_0
    new-instance v1, Lcom/peel/SmartIrFailure;

    sget-object v4, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, p0, v4}, Lcom/peel/SmartIrFailure;-><init>(ILjava/lang/String;)V

    .line 199
    .local v1, "failure":Lcom/peel/SmartIrFailure;
    sget-object v4, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/peel/IReceiveCallback;

    invoke-interface {v4, v1}, Lcom/peel/IReceiveCallback;->onFailure(Lcom/peel/SmartIrFailure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "failure":Lcom/peel/SmartIrFailure;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v4, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 205
    return-void
.end method

.method public static receiveCallbackOnSuccess(ILjava/lang/String;)V
    .locals 4
    .param p0, "frequency"    # I
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v3, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 180
    .local v2, "numCb":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 184
    :try_start_0
    sget-object v3, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/peel/IReceiveCallback;

    invoke-interface {v3, p0, p1}, Lcom/peel/IReceiveCallback;->onSuccess(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 190
    return-void
.end method

.method private throwIfNoIrEmitter()V
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/server/SmartIrService;->mHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method public static transmitCallbackOnFailure(I)V
    .locals 5
    .param p0, "statusCode"    # I

    .prologue
    .line 128
    sget-object v4, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 129
    .local v3, "numCb":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 133
    :try_start_0
    new-instance v1, Lcom/peel/SmartIrFailure;

    sget-object v4, Lcom/android/server/SmartIrService;->failureMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, p0, v4}, Lcom/peel/SmartIrFailure;-><init>(ILjava/lang/String;)V

    .line 134
    .local v1, "failure":Lcom/peel/SmartIrFailure;
    sget-object v4, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/peel/ITransmitCallback;

    invoke-interface {v4, v1}, Lcom/peel/ITransmitCallback;->onFailure(Lcom/peel/SmartIrFailure;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "failure":Lcom/peel/SmartIrFailure;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v4, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 140
    return-void
.end method

.method public static transmitCallbackOnSuccess()V
    .locals 4

    .prologue
    .line 114
    sget-object v3, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 115
    .local v2, "numCb":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 119
    :try_start_0
    sget-object v3, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/peel/ITransmitCallback;

    invoke-interface {v3}, Lcom/peel/ITransmitCallback;->onSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 125
    return-void
.end method


# virtual methods
.method public cancelContinuousTransmit()I
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/SmartIrService;->throwIfNoIrEmitter()V

    .line 89
    iget-object v1, p0, Lcom/android/server/SmartIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartIrService;->mIrObj:Lcom/android/server/SmartIrJni;

    iget-wide v2, p0, Lcom/android/server/SmartIrService;->mHal:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SmartIrJni;->halCancelContinuousTransmit(J)I

    move-result v0

    monitor-exit v1

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelReceiving()I
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/server/SmartIrService;->throwIfNoIrEmitter()V

    .line 155
    iget-object v1, p0, Lcom/android/server/SmartIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartIrService;->mIrObj:Lcom/android/server/SmartIrJni;

    iget-wide v2, p0, Lcom/android/server/SmartIrService;->mHal:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SmartIrJni;->halCancelReceiving(J)I

    move-result v0

    monitor-exit v1

    return v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasIrEmitter()Z
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/server/SmartIrService;->mHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receive(I)I
    .locals 4
    .param p1, "timeoutSeconds"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/SmartIrService;->throwIfNoIrEmitter()V

    .line 146
    iget-object v1, p0, Lcom/android/server/SmartIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartIrService;->mIrObj:Lcom/android/server/SmartIrJni;

    iget-wide v2, p0, Lcom/android/server/SmartIrService;->mHal:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/SmartIrJni;->halReceive(JI)I

    move-result v0

    monitor-exit v1

    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerReceiveCallback(Lcom/peel/IReceiveCallback;)I
    .locals 1
    .param p1, "cl"    # Lcom/peel/IReceiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    sget-object v0, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public registerTransmitCallback(Lcom/peel/ITransmitCallback;)I
    .locals 1
    .param p1, "ct"    # Lcom/peel/ITransmitCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    sget-object v0, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public transmit(ILjava/lang/String;Ljava/lang/String;III)I
    .locals 11
    .param p1, "carrierFrequency"    # I
    .param p2, "mainPattern"    # Ljava/lang/String;
    .param p3, "repeatPattern"    # Ljava/lang/String;
    .param p4, "intervalType"    # I
    .param p5, "transmitMode"    # I
    .param p6, "repeatCount"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/SmartIrService;->throwIfNoIrEmitter()V

    .line 79
    iget-object v10, p0, Lcom/android/server/SmartIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v10

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SmartIrService;->mIrObj:Lcom/android/server/SmartIrJni;

    iget-wide v2, p0, Lcom/android/server/SmartIrService;->mHal:J

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/SmartIrJni;->halTransmit(JILjava/lang/String;Ljava/lang/String;III)I

    move-result v0

    monitor-exit v10

    return v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterReceiveCallback(Lcom/peel/IReceiveCallback;)I
    .locals 1
    .param p1, "cl"    # Lcom/peel/IReceiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    sget-object v0, Lcom/android/server/SmartIrService;->mRCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public unregisterTransmitCallback(Lcom/peel/ITransmitCallback;)I
    .locals 1
    .param p1, "ct"    # Lcom/peel/ITransmitCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    sget-object v0, Lcom/android/server/SmartIrService;->mTCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method
