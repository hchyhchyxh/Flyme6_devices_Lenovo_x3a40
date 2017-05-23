.class Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;
.super Landroid/widget/lenovoweather/DrawItem_Base$EventListener;
.source "DrawItem_Text_Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/DrawItem_Text_Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListener"
.end annotation


# instance fields
.field private mIndex:I

.field private mIndex_On:Z

.field final synthetic this$0:Landroid/widget/lenovoweather/DrawItem_Text_Event;


# direct methods
.method private constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Event;Landroid/widget/lenovoweather/EventItem_Base;)V
    .locals 0
    .param p2, "eventItem"    # Landroid/widget/lenovoweather/EventItem_Base;

    .prologue
    .line 87
    iput-object p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;->this$0:Landroid/widget/lenovoweather/DrawItem_Text_Event;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/lenovoweather/DrawItem_Text_Event;Landroid/widget/lenovoweather/EventItem_Base;Landroid/widget/lenovoweather/DrawItem_Text_Event$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Event;
    .param p2, "x1"    # Landroid/widget/lenovoweather/EventItem_Base;
    .param p3, "x2"    # Landroid/widget/lenovoweather/DrawItem_Text_Event$1;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Event;Landroid/widget/lenovoweather/EventItem_Base;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;->mIndex_On:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;->mIndex_On:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;

    .prologue
    .line 80
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;->mIndex:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;->mIndex:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "DrawItem_Text_Event"

    const-string v1, "EventListener.toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;->mIndex_On:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Event$EventListener;->mIndex:I

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
