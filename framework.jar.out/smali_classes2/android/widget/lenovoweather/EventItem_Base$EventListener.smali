.class Landroid/widget/lenovoweather/EventItem_Base$EventListener;
.super Ljava/lang/Object;
.source "EventItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/lenovoweather/EventItem_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventListener"
.end annotation


# instance fields
.field mEventItem:Landroid/widget/lenovoweather/EventItem_Base;

.field mP1:I

.field mP2:I

.field final synthetic this$0:Landroid/widget/lenovoweather/EventItem_Base;


# direct methods
.method constructor <init>(Landroid/widget/lenovoweather/EventItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V
    .locals 0
    .param p2, "eventItem"    # Landroid/widget/lenovoweather/EventItem_Base;

    .prologue
    .line 111
    iput-object p1, p0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->this$0:Landroid/widget/lenovoweather/EventItem_Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mEventItem:Landroid/widget/lenovoweather/EventItem_Base;

    .line 113
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "EventItem_Base"

    const-string v1, "EventListener.toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mP1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mP2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
