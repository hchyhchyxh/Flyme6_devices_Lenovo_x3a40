.class Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
.super Ljava/lang/Object;
.source "DrawItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Base$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frame"
.end annotation


# instance fields
.field private mAlpha:F

.field private mAlpha_On:Z

.field private mDuration:I

.field private mOffsetX:I

.field private mOffsetX_On:Z

.field private mOffsetY:I

.field private mOffsetY_On:Z

.field private mRotate:F

.field private mRotate_On:Z

.field private mScaleX:F

.field private mScaleX_On:Z

.field private mScaleY:F

.field private mScaleY_On:Z

.field private mTimeBegin:I

.field private mTimeEnd:I

.field final synthetic this$1:Landroid/widget/lenovoweather/DrawItem_Base$Animator;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)V
    .locals 0

    .prologue
    .line 1214
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->this$1:Landroid/widget/lenovoweather/DrawItem_Base$Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Base$Animator;Landroid/widget/lenovoweather/DrawItem_Base$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator;
    .param p2, "x1"    # Landroid/widget/lenovoweather/DrawItem_Base$1;

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;-><init>(Landroid/widget/lenovoweather/DrawItem_Base$Animator;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I

    return v0
.end method

.method static synthetic access$4102(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I

    return p1
.end method

.method static synthetic access$4400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I

    return v0
.end method

.method static synthetic access$4402(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I

    return p1
.end method

.method static synthetic access$4500(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z

    return v0
.end method

.method static synthetic access$4502(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # Z

    .prologue
    .line 1214
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z

    return p1
.end method

.method static synthetic access$4600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I

    return v0
.end method

.method static synthetic access$4602(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I

    return p1
.end method

.method static synthetic access$4700(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z

    return v0
.end method

.method static synthetic access$4702(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # Z

    .prologue
    .line 1214
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z

    return p1
.end method

.method static synthetic access$4800(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F

    return v0
.end method

.method static synthetic access$4802(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # F

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F

    return p1
.end method

.method static synthetic access$4900(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z

    return v0
.end method

.method static synthetic access$4902(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # Z

    .prologue
    .line 1214
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z

    return p1
.end method

.method static synthetic access$5000(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F

    return v0
.end method

.method static synthetic access$5002(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # F

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F

    return p1
.end method

.method static synthetic access$5100(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z

    return v0
.end method

.method static synthetic access$5102(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # Z

    .prologue
    .line 1214
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z

    return p1
.end method

.method static synthetic access$5200(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F

    return v0
.end method

.method static synthetic access$5202(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # F

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F

    return p1
.end method

.method static synthetic access$5300(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z

    return v0
.end method

.method static synthetic access$5302(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # Z

    .prologue
    .line 1214
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z

    return p1
.end method

.method static synthetic access$5400(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F

    return v0
.end method

.method static synthetic access$5402(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # F

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F

    return p1
.end method

.method static synthetic access$5500(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z

    return v0
.end method

.method static synthetic access$5502(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # Z

    .prologue
    .line 1214
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z

    return p1
.end method

.method static synthetic access$5600(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I

    return v0
.end method

.method static synthetic access$5602(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeBegin:I

    return p1
.end method

.method static synthetic access$5700(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeEnd:I

    return v0
.end method

.method static synthetic access$5702(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 1214
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mTimeEnd:I

    return p1
.end method

.method static synthetic access$5800(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;
    .param p1, "x1"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->match(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z

    move-result v0

    return v0
.end method

.method private match(Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;)Z
    .locals 2
    .param p1, "frame"    # Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;

    .prologue
    .line 1263
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    const-string v0, "DrawItem_Base"

    const-string v1, "Animator.Frame.match"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z

    iget-boolean v1, p1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z

    iget-boolean v1, p1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z

    iget-boolean v1, p1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z

    iget-boolean v1, p1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z

    iget-boolean v1, p1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z

    iget-boolean v1, p1, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1249
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    const-string v0, "DrawItem_Base"

    const-string v2, "Animator.Frame.toString"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mDuration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mDuration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetX:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX_On:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mOffsetY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY_On:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mOffsetY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mScaleX:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX_On:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mScaleY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY_On:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mRotate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate_On:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mRotate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mAlpha:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha_On:Z

    if-eqz v2, :cond_1

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$Animator$Frame;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_4
.end method
