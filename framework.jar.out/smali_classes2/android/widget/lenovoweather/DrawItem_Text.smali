.class Landroid/widget/lenovoweather/DrawItem_Text;
.super Landroid/widget/lenovoweather/DrawItem_Base;
.source "DrawItem_Text.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Text"


# instance fields
.field private mBold:Z

.field private mColor:I

.field private mGravityX:I

.field private mGravityY:I

.field private mItalic:Z

.field private mShadowColor:I

.field private mShadowR:F

.field private mShadowX:F

.field private mShadowY:F

.field private mSize:I

.field private mSrc:Ljava/lang/String;

.field private mSrcBottom:Landroid/graphics/Bitmap;

.field private mSrcEnd:Landroid/graphics/Bitmap;

.field private mSrcStart:Landroid/graphics/Bitmap;

.field private mSrcTop:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base;-><init>()V

    .line 56
    const-string v0, "Text"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mType:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 308
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "DrawItem_Text"

    const-string v3, "createView"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ViewGroup "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Context "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resources "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LayoutInflater "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CodeThemeScript1Plug "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    :cond_0
    const/4 v2, 0x0

    .line 316
    .local v2, "view":Landroid/widget/TextView;
    if-eqz p1, :cond_5

    move-object v2, p1

    .line 317
    check-cast v2, Landroid/widget/TextView;

    .line 326
    :goto_0
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrc:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    const/4 v10, 0x0

    .line 329
    .local v10, "style":I
    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mBold:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mItalic:Z

    if-eqz v1, :cond_6

    .line 330
    const/4 v10, 0x3

    .line 336
    :cond_1
    :goto_1
    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 338
    const/4 v8, 0x1

    .line 339
    .local v8, "gravityX":I
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 340
    const/4 v8, 0x3

    .line 344
    :cond_2
    :goto_2
    const/16 v9, 0x10

    .line 345
    .local v9, "gravityY":I
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 346
    const/16 v9, 0x30

    .line 350
    :cond_3
    :goto_3
    or-int v1, v8, v9

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 352
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mColor:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSize:I

    if-lez v1, :cond_4

    .line 355
    const/4 v1, 0x0

    iget v3, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 358
    :cond_4
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F

    iget v3, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowX:F

    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowY:F

    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowColor:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 360
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcStart:Landroid/graphics/Bitmap;

    invoke-direct {v1, p4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcTop:Landroid/graphics/Bitmap;

    invoke-direct {v3, p4, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcEnd:Landroid/graphics/Bitmap;

    invoke-direct {v4, p4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcBottom:Landroid/graphics/Bitmap;

    invoke-direct {v5, p4, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 365
    invoke-super/range {v1 .. v7}, Landroid/widget/lenovoweather/DrawItem_Base;->createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    .line 368
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 369
    return-void

    .line 319
    .end local v8    # "gravityX":I
    .end local v9    # "gravityY":I
    .end local v10    # "style":I
    :cond_5
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x1090019

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "view":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "view":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 331
    .restart local v10    # "style":I
    :cond_6
    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mBold:Z

    if-eqz v1, :cond_7

    .line 332
    const/4 v10, 0x1

    goto :goto_1

    .line 333
    :cond_7
    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mItalic:Z

    if-eqz v1, :cond_1

    .line 334
    const/4 v10, 0x2

    goto/16 :goto_1

    .line 341
    .restart local v8    # "gravityX":I
    :cond_8
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 342
    const/4 v8, 0x5

    goto :goto_2

    .line 347
    .restart local v9    # "gravityY":I
    :cond_9
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 348
    const/16 v9, 0x50

    goto :goto_3
.end method

.method final loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 10
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    .line 75
    sget-object v4, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const-string v4, "DrawItem_Text"

    const-string v5, "loadData"

    const/4 v6, 0x2

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

    const-string v9, "Node "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    const/4 v4, 0x0

    .line 301
    :goto_0
    return v4

    .line 83
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 85
    .local v1, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    sget-object v4, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    const-string v4, "DrawItem_Text"

    const-string v5, "loadData"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "namedNodeMap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    :cond_2
    if-eqz v1, :cond_15

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "node":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 93
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrc:Ljava/lang/String;

    .line 94
    const-string v4, "src"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrc:Ljava/lang/String;

    .line 100
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcStart:Landroid/graphics/Bitmap;

    .line 101
    const-string v4, "srcStart"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 105
    if-eqz v3, :cond_4

    .line 106
    invoke-virtual {p1, v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcStart:Landroid/graphics/Bitmap;

    .line 111
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcEnd:Landroid/graphics/Bitmap;

    .line 112
    const-string v4, "srcEnd"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_5

    .line 115
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_5

    .line 117
    invoke-virtual {p1, v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcEnd:Landroid/graphics/Bitmap;

    .line 122
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcTop:Landroid/graphics/Bitmap;

    .line 123
    const-string v4, "srcTop"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_6

    .line 126
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 127
    if-eqz v3, :cond_6

    .line 128
    invoke-virtual {p1, v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcTop:Landroid/graphics/Bitmap;

    .line 133
    :cond_6
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcBottom:Landroid/graphics/Bitmap;

    .line 134
    const-string v4, "srcBottom"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_7

    .line 137
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 138
    if-eqz v3, :cond_7

    .line 139
    invoke-virtual {p1, v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcBottom:Landroid/graphics/Bitmap;

    .line 144
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mBold:Z

    .line 145
    const-string v4, "bold"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_8

    .line 147
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 148
    if-eqz v3, :cond_8

    .line 149
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mBold:Z

    .line 154
    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mItalic:Z

    .line 155
    const-string v4, "italic"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_9

    .line 158
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 159
    if-eqz v3, :cond_9

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mItalic:Z

    .line 165
    :cond_9
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    .line 166
    const-string v4, "gravityX"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_a

    .line 169
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 170
    if-eqz v3, :cond_a

    .line 172
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_a
    :goto_1
    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    if-gez v4, :cond_16

    .line 179
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    .line 185
    :cond_b
    :goto_2
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    .line 186
    const-string v4, "gravityY"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_c

    .line 189
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 190
    if-eqz v3, :cond_c

    .line 192
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :cond_c
    :goto_3
    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    if-gez v4, :cond_17

    .line 199
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    .line 205
    :cond_d
    :goto_4
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mColor:I

    .line 206
    const-string v4, "color"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_e

    .line 208
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_e

    .line 211
    :try_start_2
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mColor:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    :cond_e
    :goto_5
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSize:I

    .line 220
    const-string v4, "size"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_f

    .line 222
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_f

    .line 225
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 231
    :cond_f
    :goto_6
    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSize:I

    if-gtz v4, :cond_10

    .line 232
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSize:I

    .line 236
    :cond_10
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowX:F

    .line 237
    const-string v4, "shadowX"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_11

    .line 240
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_11

    .line 243
    :try_start_4
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowX:F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 251
    :cond_11
    :goto_7
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowY:F

    .line 252
    const-string v4, "shadowY"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_12

    .line 255
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 256
    if-eqz v3, :cond_12

    .line 258
    :try_start_5
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowY:F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 266
    :cond_12
    :goto_8
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F

    .line 267
    const-string v4, "shadowR"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 269
    if-eqz v2, :cond_13

    .line 270
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 271
    if-eqz v3, :cond_13

    .line 273
    :try_start_6
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 279
    :cond_13
    :goto_9
    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_18

    .line 280
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F

    .line 286
    :cond_14
    :goto_a
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowColor:I

    .line 287
    const-string v4, "shadowColor"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_15

    .line 290
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 291
    if-eqz v3, :cond_15

    .line 293
    :try_start_7
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowColor:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 301
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "value":Ljava/lang/String;
    :cond_15
    :goto_b
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 173
    .restart local v2    # "node":Lorg/w3c/dom/Node;
    .restart local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 180
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    if-lez v4, :cond_b

    .line 181
    const/4 v4, 0x1

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    goto/16 :goto_2

    .line 193
    :catch_1
    move-exception v0

    .line 194
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    .line 200
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_17
    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    if-lez v4, :cond_d

    .line 201
    const/4 v4, 0x1

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    goto/16 :goto_4

    .line 212
    :catch_2
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 226
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_6

    .line 244
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_7

    .line 259
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_8

    .line 274
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v0

    .line 275
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_9

    .line 281
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_18
    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F

    const/high16 v5, 0x42580000    # 54.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    .line 282
    const/high16 v4, 0x42580000    # 54.0f

    iput v4, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F

    goto :goto_a

    .line 294
    :catch_7
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b
.end method

.method final loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 7
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    const/4 v0, 0x0

    .line 375
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "DrawItem_Text"

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

    .line 381
    :cond_0
    if-eqz p4, :cond_1

    .line 386
    :goto_0
    return v0

    .line 385
    :cond_1
    new-instance p4, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .end local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-direct {p4, p0, p0}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V

    .line 386
    .restart local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/DrawItem_Base;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "DrawItem_Text"

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/lenovoweather/DrawItem_Base;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mBold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mItalic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mItalic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mGravityX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mGravityY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mGravityY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mShadowColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcStart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcTop:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcEnd:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcBottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrcBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final translate(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 6
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 403
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "DrawItem_Text"

    const-string v1, "translate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CodeThemeScript1Plug "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :cond_1
    return-void
.end method

.method final updateContent(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 392
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string v1, "DrawItem_Text"

    const-string v2, "updateContent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    :cond_0
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 396
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 397
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .end local v0    # "view":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
