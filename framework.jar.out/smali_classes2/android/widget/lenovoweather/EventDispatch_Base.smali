.class abstract Landroid/widget/lenovoweather/EventDispatch_Base;
.super Ljava/lang/Object;
.source "EventDispatch_Base.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "EventDispatch_Base"


# instance fields
.field mEventListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/EventItem_Base$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field mP1:I

.field mP1_On:Z

.field mP2:I

.field mP2_On:Z

.field mT:F

.field mT_On:Z

.field mType:Ljava/lang/String;

.field mXA:F

.field mXR:F

.field mXYA_On:Z

.field mXYR_On:Z

.field mYA:F

.field mYR:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mEventListener:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addEventListener(Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V
    .locals 6
    .param p1, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 71
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "EventDispatch_Base"

    const-string v1, "addEventListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventItem_Base.EventListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    :cond_0
    if-nez p1, :cond_1

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mEventListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method dispatch()V
    .locals 5

    .prologue
    .line 56
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "EventDispatch_Base"

    const-string v3, "dispatch"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mEventListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .line 60
    .local v0, "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    if-eqz v0, :cond_1

    .line 61
    iget-boolean v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP1_On:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP1:I

    iget v3, v0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP1:I

    if-ne v2, v3, :cond_1

    :cond_2
    iget-boolean v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP2_On:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP2:I

    iget v3, v0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP2:I

    if-ne v2, v3, :cond_1

    .line 63
    :cond_3
    iget-object v2, v0, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mEventItem:Landroid/widget/lenovoweather/EventItem_Base;

    invoke-virtual {v2, p0, v0}, Landroid/widget/lenovoweather/EventItem_Base;->dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V

    goto :goto_0

    .line 67
    .end local v0    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "EventDispatch_Base"

    const-string v2, "toString"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mEventListener.size():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mEventListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mP1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP1_On:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mP2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP2_On:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mP2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mT_On:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mT:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mXA:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mXYA_On:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mXA:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mYA:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mXYA_On:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mYA:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mXR:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mXYR_On:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mXR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mYR:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mXYR_On:Z

    if-eqz v2, :cond_1

    iget v1, p0, Landroid/widget/lenovoweather/EventDispatch_Base;->mYR:F

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

    goto/16 :goto_0

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

    :cond_7
    move-object v0, v1

    goto :goto_5
.end method
