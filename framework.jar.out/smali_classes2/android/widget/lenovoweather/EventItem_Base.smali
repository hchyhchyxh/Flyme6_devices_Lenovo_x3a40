.class abstract Landroid/widget/lenovoweather/EventItem_Base;
.super Ljava/lang/Object;
.source "EventItem_Base.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "EventItem_Base"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method abstract dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V
.end method

.method loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 8
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 12
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    const-string v1, "EventItem_Base"

    const-string v2, "loadData"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CodeThemeScript1Plug "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 18
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    const-string v1, "EventItem_Base"

    const-string v2, "loadData"

    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nodeList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    :cond_1
    return v6
.end method

.method loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 10
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 44
    sget-object v4, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const-string v4, "EventItem_Base"

    const-string v5, "loadEventListener"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CodeThemeScript1Plug "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EventDispatch_Base "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Node "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EventItem_Base.EventListener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    :cond_0
    if-eqz p4, :cond_1

    if-nez p2, :cond_2

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 97
    :goto_0
    return v4

    .line 54
    :cond_2
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 56
    .local v1, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v1, :cond_5

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "node":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 61
    .local v3, "value":Ljava/lang/String;
    iget-boolean v4, p2, Landroid/widget/lenovoweather/EventDispatch_Base;->mP1_On:Z

    if-eqz v4, :cond_3

    .line 62
    const/4 v4, 0x0

    iput v4, p4, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP1:I

    .line 63
    const-string v4, "p1"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_3

    .line 68
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p4, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP1:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_3
    :goto_1
    iget-boolean v4, p2, Landroid/widget/lenovoweather/EventDispatch_Base;->mP2_On:Z

    if-eqz v4, :cond_4

    .line 78
    const/4 v4, 0x0

    iput v4, p4, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP2:I

    .line 79
    const-string v4, "p2"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 82
    if-eqz v3, :cond_4

    .line 84
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p4, Landroid/widget/lenovoweather/EventItem_Base$EventListener;->mP2:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :cond_4
    :goto_2
    invoke-virtual {p2, p4}, Landroid/widget/lenovoweather/EventDispatch_Base;->addEventListener(Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V

    .line 94
    const/4 v4, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 97
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method
