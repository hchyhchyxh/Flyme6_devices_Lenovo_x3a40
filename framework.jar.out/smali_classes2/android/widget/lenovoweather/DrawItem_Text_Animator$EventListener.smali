.class Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;
.super Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
.source "DrawItem_Text_Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Text_Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListener"
.end annotation


# instance fields
.field private mTimes:I

.field private mTimes_On:Z

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Text_Animator;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/EventItem_Base;)V
    .locals 0
    .param p2, "eventItem"    # Landroid/widget/lenovoweather/EventItem_Base;

    .prologue
    .line 813
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->this$0:Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    .line 814
    invoke-direct {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V

    .line 815
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/EventItem_Base;Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    .param p2, "x1"    # Landroid/widget/lenovoweather/EventItem_Base;
    .param p3, "x2"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;

    .prologue
    .line 806
    invoke-direct {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/EventItem_Base;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;

    .prologue
    .line 806
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;
    .param p1, "x1"    # I

    .prologue
    .line 806
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;

    .prologue
    .line 806
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes_On:Z

    return v0
.end method

.method static synthetic access$902(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 806
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes_On:Z

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 819
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const-string v0, "DrawItem_Text_Animator"

    const-string v1, "EventListener.toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes_On:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
