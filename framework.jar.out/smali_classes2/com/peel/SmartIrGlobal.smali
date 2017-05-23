.class public final Lcom/peel/SmartIrGlobal;
.super Ljava/lang/Object;
.source "SmartIrGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peel/SmartIrGlobal$1;,
        Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;,
        Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;,
        Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;,
        Lcom/peel/SmartIrGlobal$TransmitManagerCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EVENT_FAILURE:I = 0x1

.field private static final EVENT_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmartIrGlobal"

.field private static sInstance:Lcom/peel/SmartIrGlobal;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

.field private final mReceiveListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mSim:Lcom/peel/ISmartIrService;

.field private mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

.field private final mTransmitListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/peel/ISmartIrService;)V
    .locals 2
    .param p1, "sim"    # Lcom/peel/ISmartIrService;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/peel/SmartIrGlobal;->mLock:Ljava/lang/Object;

    .line 36
    iput-object v1, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    .line 37
    iput-object v1, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/peel/SmartIrGlobal;I)V
    .locals 0
    .param p0, "x0"    # Lcom/peel/SmartIrGlobal;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/peel/SmartIrGlobal;->handleTransmitSucessEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/peel/SmartIrGlobal;ILcom/peel/SmartIrFailure;)V
    .locals 0
    .param p0, "x0"    # Lcom/peel/SmartIrGlobal;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/peel/SmartIrGlobal;->handleTransmitFailureEvent(ILcom/peel/SmartIrFailure;)V

    return-void
.end method

.method static synthetic access$400(Lcom/peel/SmartIrGlobal;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/peel/SmartIrGlobal;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/peel/SmartIrGlobal;->handleReceiveSucessEvent(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/peel/SmartIrGlobal;ILcom/peel/SmartIrFailure;)V
    .locals 0
    .param p0, "x0"    # Lcom/peel/SmartIrGlobal;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/peel/SmartIrGlobal;->handleReceiveErrorEvent(ILcom/peel/SmartIrFailure;)V

    return-void
.end method

.method private findReceiveLocked(Lcom/peel/SmartIr$ReceiveCallback;)I
    .locals 3
    .param p1, "listener"    # Lcom/peel/SmartIr$ReceiveCallback;

    .prologue
    .line 325
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 326
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 327
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;

    invoke-virtual {v2}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->getListener()Lcom/peel/SmartIr$ReceiveCallback;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 331
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 326
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findTransmitLocked(Lcom/peel/SmartIr$TransmitCallback;)I
    .locals 3
    .param p1, "listener"    # Lcom/peel/SmartIr$TransmitCallback;

    .prologue
    .line 184
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 185
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 186
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;

    invoke-virtual {v2}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->getListener()Lcom/peel/SmartIr$TransmitCallback;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 190
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 185
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/peel/SmartIrGlobal;
    .locals 4

    .prologue
    .line 48
    const-class v2, Lcom/peel/SmartIrGlobal;

    monitor-enter v2

    .line 50
    :try_start_0
    sget-object v1, Lcom/peel/SmartIrGlobal;->sInstance:Lcom/peel/SmartIrGlobal;

    if-nez v1, :cond_0

    .line 51
    const-string v1, "smart_ir"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lcom/peel/SmartIrGlobal;

    invoke-static {v0}, Lcom/peel/ISmartIrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/peel/ISmartIrService;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/peel/SmartIrGlobal;-><init>(Lcom/peel/ISmartIrService;)V

    sput-object v1, Lcom/peel/SmartIrGlobal;->sInstance:Lcom/peel/SmartIrGlobal;

    .line 56
    :cond_0
    sget-object v1, Lcom/peel/SmartIrGlobal;->sInstance:Lcom/peel/SmartIrGlobal;

    monitor-exit v2

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleReceiveErrorEvent(ILcom/peel/SmartIrFailure;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "failure"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 353
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 354
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 355
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;

    invoke-virtual {v2, p1, p2}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->sendReceiveErrorEvent(ILcom/peel/SmartIrFailure;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method private handleReceiveSucessEvent(IILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "frequency"    # I
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 347
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;

    invoke-virtual {v2, p1, p2, p3}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->sendReceiveSucessEvent(IILjava/lang/String;)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method private handleTransmitFailureEvent(ILcom/peel/SmartIrFailure;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "failure"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 213
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 214
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;

    invoke-virtual {v2, p1, p2}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->sendTransmitFailedEvent(ILcom/peel/SmartIrFailure;)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method private handleTransmitSucessEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 206
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;

    invoke-virtual {v2, p1}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->sendTransmitSucessEvent(I)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method private registerReceiveCallbackLocked()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 309
    const/4 v1, -0x1

    .line 310
    .local v1, "ret":I
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    if-nez v2, :cond_0

    .line 311
    new-instance v2, Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    invoke-direct {v2, p0, v4}, Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;-><init>(Lcom/peel/SmartIrGlobal;Lcom/peel/SmartIrGlobal$1;)V

    iput-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    invoke-interface {v2, v3}, Lcom/peel/ISmartIrService;->registerReceiveCallback(Lcom/peel/IReceiveCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 317
    .local v0, "ex":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    goto :goto_0
.end method

.method private registerTransmitCallbackLocked()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    const/4 v1, -0x1

    .line 170
    .local v1, "ret":I
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    if-nez v2, :cond_0

    .line 171
    new-instance v2, Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    invoke-direct {v2, p0, v4}, Lcom/peel/SmartIrGlobal$TransmitManagerCallback;-><init>(Lcom/peel/SmartIrGlobal;Lcom/peel/SmartIrGlobal$1;)V

    iput-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    invoke-interface {v2, v3}, Lcom/peel/ISmartIrService;->registerTransmitCallback(Lcom/peel/ITransmitCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    goto :goto_0
.end method


# virtual methods
.method public cancelContinuousTransmit()I
    .locals 2

    .prologue
    .line 110
    const/4 v0, -0x1

    .line 112
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    invoke-interface {v1}, Lcom/peel/ISmartIrService;->cancelContinuousTransmit()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public cancelReceiving()I
    .locals 2

    .prologue
    .line 99
    const/4 v0, -0x1

    .line 101
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    invoke-interface {v1}, Lcom/peel/ISmartIrService;->cancelReceiving()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasIrEmitter()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    invoke-interface {v1}, Lcom/peel/ISmartIrService;->hasIrEmitter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public receive(I)I
    .locals 2
    .param p1, "timeoutSeconds"    # I

    .prologue
    .line 88
    const/4 v0, -0x1

    .line 90
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    invoke-interface {v1, p1}, Lcom/peel/ISmartIrService;->receive(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public registerReceiveCallback(Lcom/peel/SmartIr$ReceiveCallback;Landroid/os/Handler;)I
    .locals 5
    .param p1, "listener"    # Lcom/peel/SmartIr$ReceiveCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 264
    const/4 v1, -0x1

    .line 265
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 266
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/peel/SmartIrGlobal;->findReceiveLocked(Lcom/peel/SmartIr$ReceiveCallback;)I

    move-result v0

    .line 271
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 272
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;

    invoke-direct {v4, p1, p2}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;-><init>(Lcom/peel/SmartIr$ReceiveCallback;Landroid/os/Handler;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-direct {p0}, Lcom/peel/SmartIrGlobal;->registerReceiveCallbackLocked()I

    move-result v1

    .line 275
    :cond_1
    monitor-exit v3

    .line 276
    return v1

    .line 275
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerTransmitCallback(Lcom/peel/SmartIr$TransmitCallback;Landroid/os/Handler;)I
    .locals 5
    .param p1, "listener"    # Lcom/peel/SmartIr$TransmitCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 123
    const/4 v1, -0x1

    .line 124
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 129
    :try_start_0
    invoke-direct {p0, p1}, Lcom/peel/SmartIrGlobal;->findTransmitLocked(Lcom/peel/SmartIr$TransmitCallback;)I

    move-result v0

    .line 130
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 131
    iget-object v2, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;

    invoke-direct {v4, p1, p2}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;-><init>(Lcom/peel/SmartIr$TransmitCallback;Landroid/os/Handler;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lcom/peel/SmartIrGlobal;->registerTransmitCallbackLocked()I

    move-result v1

    .line 134
    :cond_1
    monitor-exit v3

    .line 135
    return v1

    .line 134
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public transmit(ILjava/lang/String;Ljava/lang/String;III)I
    .locals 8
    .param p1, "carrierFrequency"    # I
    .param p2, "mainPattern"    # Ljava/lang/String;
    .param p3, "repeatPattern"    # Ljava/lang/String;
    .param p4, "intervalType"    # I
    .param p5, "transmitMode"    # I
    .param p6, "repeatCount"    # I

    .prologue
    .line 76
    const/4 v7, -0x1

    .line 78
    .local v7, "ret":I
    :try_start_0
    iget-object v0, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/peel/ISmartIrService;->transmit(ILjava/lang/String;Ljava/lang/String;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 84
    :goto_0
    return v7

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterReceiveCallback(Lcom/peel/SmartIr$ReceiveCallback;)I
    .locals 6
    .param p1, "listener"    # Lcom/peel/SmartIr$ReceiveCallback;

    .prologue
    .line 280
    const/4 v2, -0x1

    .line 281
    .local v2, "ret":I
    if-nez p1, :cond_0

    .line 282
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/peel/SmartIrGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 286
    :try_start_0
    invoke-direct {p0, p1}, Lcom/peel/SmartIrGlobal;->findReceiveLocked(Lcom/peel/SmartIr$ReceiveCallback;)I

    move-result v1

    .line 287
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 288
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;

    .line 289
    .local v0, "d":Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;
    invoke-virtual {v0}, Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;->clearEvents()V

    .line 290
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mReceiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 292
    .end local v0    # "d":Lcom/peel/SmartIrGlobal$ReceiveCallbackDelegate;
    :cond_1
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 294
    :try_start_1
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    iget-object v5, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    invoke-interface {v3, v5}, Lcom/peel/ISmartIrService;->unregisterReceiveCallback(Lcom/peel/IReceiveCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 301
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    .line 304
    :cond_2
    :goto_0
    monitor-exit v4

    .line 305
    return v2

    .line 295
    :catch_0
    move-exception v3

    .line 301
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    goto :goto_0

    .line 304
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 301
    .restart local v1    # "index":I
    :catchall_1
    move-exception v3

    const/4 v5, 0x0

    :try_start_3
    iput-object v5, p0, Lcom/peel/SmartIrGlobal;->mReceiveCallback:Lcom/peel/SmartIrGlobal$ReceiveManagerCallback;

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public unregisterTransmitCallback(Lcom/peel/SmartIr$TransmitCallback;)I
    .locals 6
    .param p1, "listener"    # Lcom/peel/SmartIr$TransmitCallback;

    .prologue
    .line 139
    const/4 v2, -0x1

    .line 140
    .local v2, "ret":I
    if-nez p1, :cond_0

    .line 141
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/peel/SmartIrGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 145
    :try_start_0
    invoke-direct {p0, p1}, Lcom/peel/SmartIrGlobal;->findTransmitLocked(Lcom/peel/SmartIr$TransmitCallback;)I

    move-result v1

    .line 146
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 147
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;

    .line 148
    .local v0, "d":Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;
    invoke-virtual {v0}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->clearEvents()V

    .line 149
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mTransmitListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    .end local v0    # "d":Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;
    :cond_1
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 153
    :try_start_1
    iget-object v3, p0, Lcom/peel/SmartIrGlobal;->mSim:Lcom/peel/ISmartIrService;

    iget-object v5, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    invoke-interface {v3, v5}, Lcom/peel/ISmartIrService;->unregisterTransmitCallback(Lcom/peel/ITransmitCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 160
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    .line 164
    :cond_2
    :goto_0
    monitor-exit v4

    .line 165
    return v2

    .line 154
    :catch_0
    move-exception v3

    .line 160
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    goto :goto_0

    .line 164
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 160
    .restart local v1    # "index":I
    :catchall_1
    move-exception v3

    const/4 v5, 0x0

    :try_start_3
    iput-object v5, p0, Lcom/peel/SmartIrGlobal;->mTransmitCallback:Lcom/peel/SmartIrGlobal$TransmitManagerCallback;

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
