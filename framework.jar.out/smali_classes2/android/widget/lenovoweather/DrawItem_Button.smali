.class Landroid/widget/lenovoweather/DrawItem_Button;
.super Landroid/widget/lenovoweather/DrawItem_Base;
.source "DrawItem_Button.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Button"

.field static sState1Disable:[I

.field static sState2Pressed:[I

.field static sState3Normal:[I


# instance fields
.field private mSrcDisable:Landroid/graphics/Bitmap;

.field private mSrcNormal:Landroid/graphics/Bitmap;

.field private mSrcPressed:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Landroid/widget/lenovoweather/DrawItem_Button;->sState1Disable:[I

    .line 23
    sput-object v0, Landroid/widget/lenovoweather/DrawItem_Button;->sState2Pressed:[I

    .line 25
    sput-object v0, Landroid/widget/lenovoweather/DrawItem_Button;->sState3Normal:[I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base;-><init>()V

    .line 35
    const-string v0, "Button"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mType:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "DrawItem_Button"

    const-string v3, "createView"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewGroup "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Context "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LayoutInflater "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CodeThemeScript1Plug "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, "view":Landroid/widget/ImageView;
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 126
    .local v7, "d":Landroid/graphics/drawable/StateListDrawable;
    sget-object v3, Landroid/widget/lenovoweather/DrawItem_Button;->sState1Disable:[I

    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcDisable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcDisable:Landroid/graphics/Bitmap;

    invoke-direct {v0, p4, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v7, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 128
    sget-object v3, Landroid/widget/lenovoweather/DrawItem_Button;->sState2Pressed:[I

    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcPressed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcPressed:Landroid/graphics/Bitmap;

    invoke-direct {v0, p4, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v7, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 130
    sget-object v0, Landroid/widget/lenovoweather/DrawItem_Button;->sState3Normal:[I

    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    invoke-direct {v2, p4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {v7, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 134
    invoke-super/range {v0 .. v6}, Landroid/widget/lenovoweather/DrawItem_Base;->createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    .line 136
    return-void

    :cond_2
    move-object v0, v2

    .line 126
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 128
    goto :goto_1
.end method

.method final loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 11
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    const-string v5, "DrawItem_Button"

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

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    :cond_1
    :goto_0
    return v3

    .line 57
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 59
    .local v0, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 60
    const-string v5, "DrawItem_Button"

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

    .line 62
    :cond_3
    if-eqz v0, :cond_6

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 67
    .local v2, "value":Ljava/lang/String;
    iput-object v10, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    .line 68
    const-string v5, "srcNormal"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    .line 78
    :cond_4
    iput-object v10, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcPressed:Landroid/graphics/Bitmap;

    .line 79
    const-string v5, "srcPressed"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {p1, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcPressed:Landroid/graphics/Bitmap;

    .line 89
    :cond_5
    iput-object v10, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcDisable:Landroid/graphics/Bitmap;

    .line 90
    const-string v5, "srcDisable"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_6

    .line 95
    invoke-virtual {p1, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcDisable:Landroid/graphics/Bitmap;

    .line 100
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 104
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcPressed:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    .line 105
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcPressed:Landroid/graphics/Bitmap;

    .line 107
    :cond_7
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcDisable:Landroid/graphics/Bitmap;

    if-nez v3, :cond_8

    .line 108
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcDisable:Landroid/graphics/Bitmap;

    :cond_8
    move v3, v4

    .line 111
    goto/16 :goto_0
.end method

.method final loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 7
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    const/4 v0, 0x0

    .line 142
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "DrawItem_Button"

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

    .line 148
    :cond_0
    if-eqz p4, :cond_1

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_1
    new-instance p4, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .end local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-direct {p4, p0, p0}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V

    .line 153
    .restart local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/DrawItem_Base;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "DrawItem_Button"

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/lenovoweather/DrawItem_Base;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcNormal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcDisable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mSrcDisable:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final updateContent(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 159
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "DrawItem_Button"

    const-string v1, "updateContent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boolean "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Button;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    :cond_1
    return-void
.end method
