.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 44
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const-wide/32 v8, 0x20000

    .line 152
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 155
    :cond_0
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 156
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 157
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 158
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mNativePointer:J
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$400(Lcom/android/server/lights/LightsService;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/lights/LightsService;->setLight_native(JIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 167
    :cond_1
    return-void

    .line 164
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 124
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 125
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 133
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    :cond_0
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshBrightness(Z)V
    .locals 2
    .param p1, "isWfdNappingEnabled"    # Z

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # setter for: Lcom/android/server/lights/LightsService;->mWfdNappingEnabled:Z
    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService;->access$002(Lcom/android/server/lights/LightsService;Z)Z

    .line 55
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLastBackLightBrightness:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(I)V

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLastButtonBrightness:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v0

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 62
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 82
    :cond_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # setter for: Lcom/android/server/lights/LightsService;->mLastBackLightBrightness:I
    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService;->access$102(Lcom/android/server/lights/LightsService;I)I

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mWfdNappingEnabled:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 p1, 0x0

    .line 97
    :cond_1
    and-int/lit16 v1, p1, 0xff

    .line 98
    .local v1, "color":I
    const/high16 v0, -0x1000000

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 101
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mWfdNappingEnabled:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService$LightImpl;->x3_patch_SetDimRate(Ljava/lang/String;)V

    .line 104
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 85
    .end local v1    # "color":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # setter for: Lcom/android/server/lights/LightsService;->mLastButtonBrightness:I
    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService;->access$202(Lcom/android/server/lights/LightsService;I)I

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method x3_patch_SetDimRate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "/sys/class/i2c-dev/i2c-11/device/11-0036/backlight/lm36923/dimming"

    .line 69
    .local v0, "FILE_LCD_STEP_RATE":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    const-string v2, "/sys/class/i2c-dev/i2c-11/device/11-0036/backlight/lm36923/dimming"

    invoke-static {v2, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
