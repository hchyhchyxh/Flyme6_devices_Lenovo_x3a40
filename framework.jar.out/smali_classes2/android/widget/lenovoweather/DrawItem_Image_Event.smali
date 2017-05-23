.class Landroid/widget/lenovoweather/DrawItem_Image_Event;
.super Landroid/widget/lenovoweather/DrawItem_Image_Multi;
.source "DrawItem_Image_Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/DrawItem_Image_Event$1;,
        Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Image_Event"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Image_Multi;-><init>()V

    .line 11
    const-string v0, "ImageEvent"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Event;->mType:Ljava/lang/String;

    .line 12
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Event;->mImageNumMax:I

    .line 13
    return-void
.end method


# virtual methods
.method dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V
    .locals 6
    .param p1, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p2, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 18
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "DrawItem_Image_Event"

    const-string v1, "dealEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventDispatch_Base "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventItem_Base.EventListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Event;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 33
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 27
    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->mIndex_On:Z
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->access$000(Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 29
    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->mIndex:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->access$100(Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/lenovoweather/DrawItem_Image_Event;->updateContent(I)V

    .line 32
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Image_Multi;->dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V

    goto :goto_0
.end method

.method final loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 11
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 39
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    const-string v5, "DrawItem_Image_Event"

    const-string v6, "loadEventListener"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CodeThemeScript1Plug "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EventDispatch_Base "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Node "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EventItem_Base.EventListener "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    :cond_0
    if-eqz p4, :cond_1

    .line 46
    const/4 v5, 0x0

    .line 77
    :goto_0
    return v5

    .line 49
    :cond_1
    new-instance p4, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;

    .end local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    const/4 v5, 0x0

    invoke-direct {p4, p0, p0, v5}, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Image_Event;Landroid/widget/lenovoweather/EventItem_Base;Landroid/widget/lenovoweather/DrawItem_Image_Event$1;)V

    .line 50
    .restart local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/DrawItem_Image_Multi;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 52
    const/4 v5, 0x0

    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 56
    .local v2, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v2, :cond_3

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 61
    .local v4, "value":Ljava/lang/String;
    const-string v5, "index"

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_3

    .line 67
    :try_start_0
    move-object v0, p4

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;

    move-object v5, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->mIndex:I
    invoke-static {v5, v6}, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->access$102(Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;I)I

    .line 69
    move-object v0, p4

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;

    move-object v5, v0

    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->mIndex_On:Z
    invoke-static {v5, v6}, Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;->access$002(Landroid/widget/lenovoweather/DrawItem_Image_Event$EventListener;Z)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 70
    .restart local v3    # "node":Lorg/w3c/dom/Node;
    .restart local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method
