.class Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
.super Ljava/lang/Object;
.source "DrawItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animator"
.end annotation


# instance fields
.field private mId:I

.field private mTimes:I

.field final synthetic this$1:Landroid/widget/lenovoweather/DrawItem_Base$EventListener;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->this$1:Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;Landroid/widget/lenovoweather/DrawItem_Base$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
    .param p2, "x1"    # Landroid/widget/lenovoweather/DrawItem_Base$1;

    .prologue
    .line 840
    invoke-direct {p0, p1}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;-><init>(Landroid/widget/lenovoweather/DrawItem_Base$EventListener;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;

    .prologue
    .line 840
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mId:I

    return v0
.end method

.method static synthetic access$3302(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    .param p1, "x1"    # I

    .prologue
    .line 840
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mId:I

    return p1
.end method

.method static synthetic access$3500(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;

    .prologue
    .line 840
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mTimes:I

    return v0
.end method

.method static synthetic access$3502(Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;
    .param p1, "x1"    # I

    .prologue
    .line 840
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mTimes:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 849
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    const-string v0, "DrawItem_Base"

    const-string v1, "EventListener.Animator.toString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Base$EventListener$Animator;->mTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
