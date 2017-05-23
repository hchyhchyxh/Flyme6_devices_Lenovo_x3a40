.class Landroid/widget/lenovoweather/DrawItem_Image;
.super Landroid/widget/lenovoweather/DrawItem_Base;
.source "DrawItem_Image.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Image"


# instance fields
.field private mSrc:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base;-><init>()V

    .line 23
    const-string v0, "Image"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image;->mType:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method final createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 75
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "DrawItem_Image"

    const-string v2, "createView"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewGroup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Context "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resources "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LayoutInflater "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CodeThemeScript1Plug "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "view":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image;->mSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 85
    invoke-super/range {v0 .. v6}, Landroid/widget/lenovoweather/DrawItem_Base;->createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    .line 87
    return-void
.end method

.method final loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 10
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    const-string v5, "DrawItem_Image"

    const-string v6, "loadData"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CodeThemeScript1Plug "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Node "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v6, v7}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 68
    :cond_1
    :goto_0
    return v3

    .line 44
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 46
    .local v0, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 47
    const-string v5, "DrawItem_Image"

    const-string v6, "loadData"

    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "namedNodeMap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    :cond_3
    if-eqz v0, :cond_4

    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 54
    .local v2, "value":Ljava/lang/String;
    const-string v5, "src"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {p1, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image;->mSrc:Landroid/graphics/Bitmap;

    .line 63
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image;->mSrc:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    move v3, v4

    .line 68
    goto :goto_0
.end method

.method final loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 7
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    const/4 v0, 0x0

    .line 93
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "DrawItem_Image"

    const-string v2, "loadEventListener"

    const/4 v3, 0x4

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

    aput-object v4, v3, v0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EventDispatch_Base "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EventItem_Base.EventListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    :cond_0
    if-eqz p4, :cond_1

    .line 104
    :goto_0
    return v0

    .line 103
    :cond_1
    new-instance p4, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .end local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-direct {p4, p0, p0}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V

    .line 104
    .restart local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/DrawItem_Base;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "DrawItem_Image"

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/lenovoweather/DrawItem_Base;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Image;->mSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
