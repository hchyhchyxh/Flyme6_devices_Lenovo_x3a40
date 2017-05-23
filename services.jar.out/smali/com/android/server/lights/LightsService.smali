.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_WFD:Z = false

.field static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mLastBackLightBrightness:I

.field private mLastButtonBrightness:I

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private mWfdNappingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 36
    iput v1, p0, Lcom/android/server/lights/LightsService;->mLastBackLightBrightness:I

    .line 37
    iput v1, p0, Lcom/android/server/lights/LightsService;->mLastButtonBrightness:I

    .line 38
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mWfdNappingEnabled:Z

    .line 39
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 194
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 211
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 182
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWfdNappingEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mWfdNappingEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastBackLightBrightness:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/lights/LightsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLastBackLightBrightness:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastButtonBrightness:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/lights/LightsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLastButtonBrightness:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    return-wide v0
.end method

.method private static native finalize_native(J)V
.end method

.method private static native init_native()J
.end method

.method static native setLight_native(JIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    .line 208
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 209
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 191
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
    return-void
.end method
