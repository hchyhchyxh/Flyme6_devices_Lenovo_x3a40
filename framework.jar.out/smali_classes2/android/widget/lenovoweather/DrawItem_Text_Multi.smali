.class Landroid/widget/lenovoweather/DrawItem_Text_Multi;
.super Landroid/widget/lenovoweather/DrawItem_Base;
.source "DrawItem_Text_Multi.java"


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Text_Multi"


# instance fields
.field private mBold:Z

.field mBottomDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field mEndDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGravityX:I

.field private mGravityY:I

.field private mItalic:Z

.field private mShadowColor:I

.field private mShadowR:F

.field private mShadowX:F

.field private mShadowY:F

.field private mShowIndex:I

.field private mSize:I

.field private mSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcBottom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcEnd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mSrcTranslated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStartDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field mTextNumMax:I

.field mTopDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcStart:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcEnd:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTop:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcBottom:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mTextNumMax:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    .line 76
    const-string v0, "TextMulti"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mType:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method final createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 372
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "DrawItem_Text_Multi"

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

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 378
    :cond_0
    const/4 v2, 0x0

    .line 380
    .local v2, "view":Landroid/widget/TextView;
    if-eqz p1, :cond_5

    move-object v2, p1

    .line 381
    check-cast v2, Landroid/widget/TextView;

    .line 390
    :goto_0
    const/4 v12, 0x0

    .line 391
    .local v12, "style":I
    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBold:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mItalic:Z

    if-eqz v1, :cond_6

    .line 392
    const/4 v12, 0x3

    .line 398
    :cond_1
    :goto_1
    move-object/from16 v0, p6

    iget-object v1, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 400
    const/4 v8, 0x1

    .line 401
    .local v8, "gravityX":I
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 402
    const/4 v8, 0x3

    .line 406
    :cond_2
    :goto_2
    const/16 v9, 0x10

    .line 407
    .local v9, "gravityY":I
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 408
    const/16 v9, 0x30

    .line 412
    :cond_3
    :goto_3
    or-int v1, v8, v9

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 414
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mColor:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSize:I

    if-lez v1, :cond_4

    .line 417
    const/4 v1, 0x0

    iget v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 420
    :cond_4
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F

    iget v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowX:F

    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowY:F

    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowColor:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 422
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 423
    .local v11, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTranslated:Ljava/util/ArrayList;

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mStartDrawable:Ljava/util/ArrayList;

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mTopDrawable:Ljava/util/ArrayList;

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mEndDrawable:Ljava/util/ArrayList;

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBottomDrawable:Ljava/util/ArrayList;

    .line 428
    const/4 v13, 0x0

    .line 429
    .local v13, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v11, :cond_e

    .line 430
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTranslated:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcStart:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    check-cast v13, Landroid/graphics/Bitmap;

    .line 432
    .restart local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mStartDrawable:Ljava/util/ArrayList;

    if-nez v13, :cond_a

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    check-cast v13, Landroid/graphics/Bitmap;

    .line 435
    .restart local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mTopDrawable:Ljava/util/ArrayList;

    if-nez v13, :cond_b

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcEnd:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    check-cast v13, Landroid/graphics/Bitmap;

    .line 438
    .restart local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mEndDrawable:Ljava/util/ArrayList;

    if-nez v13, :cond_c

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcBottom:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    check-cast v13, Landroid/graphics/Bitmap;

    .line 441
    .restart local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBottomDrawable:Ljava/util/ArrayList;

    if-nez v13, :cond_d

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 383
    .end local v8    # "gravityX":I
    .end local v9    # "gravityY":I
    .end local v10    # "i":I
    .end local v11    # "size":I
    .end local v12    # "style":I
    .end local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x1090019

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2    # "view":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "view":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 393
    .restart local v12    # "style":I
    :cond_6
    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBold:Z

    if-eqz v1, :cond_7

    .line 394
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 395
    :cond_7
    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mItalic:Z

    if-eqz v1, :cond_1

    .line 396
    const/4 v12, 0x2

    goto/16 :goto_1

    .line 403
    .restart local v8    # "gravityX":I
    :cond_8
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 404
    const/4 v8, 0x5

    goto/16 :goto_2

    .line 409
    .restart local v9    # "gravityY":I
    :cond_9
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 410
    const/16 v9, 0x50

    goto/16 :goto_3

    .line 432
    .restart local v10    # "i":I
    .restart local v11    # "size":I
    .restart local v13    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_a
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 435
    :cond_b
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 438
    :cond_c
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_7

    .line 441
    :cond_d
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_8

    :cond_e
    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 445
    invoke-super/range {v1 .. v7}, Landroid/widget/lenovoweather/DrawItem_Base;->createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    .line 448
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 449
    return-void
.end method

.method final loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 22
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    .line 97
    sget-object v16, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 98
    const-string v16, "DrawItem_Text_Multi"

    const-string v17, "loadData"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CodeThemeScript1Plug "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Node "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 102
    const/16 v16, 0x0

    .line 365
    :goto_0
    return v16

    .line 105
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 107
    .local v4, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    sget-object v16, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 108
    const-string v16, "DrawItem_Text_Multi"

    const-string v17, "loadData"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "namedNodeMap "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    :cond_2
    if-eqz v4, :cond_10

    .line 111
    const/4 v6, 0x0

    .line 112
    .local v6, "node":Lorg/w3c/dom/Node;
    const/4 v14, 0x0

    .line 115
    .local v14, "value":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBold:Z

    .line 116
    const-string v16, "bold"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_3

    .line 118
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 119
    if-eqz v14, :cond_3

    .line 120
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBold:Z

    .line 125
    :cond_3
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mItalic:Z

    .line 126
    const-string v16, "italic"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_4

    .line 129
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 130
    if-eqz v14, :cond_4

    .line 131
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mItalic:Z

    .line 136
    :cond_4
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    .line 137
    const-string v16, "gravityX"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 139
    if-eqz v6, :cond_5

    .line 140
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 141
    if-eqz v14, :cond_5

    .line 143
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    move/from16 v16, v0

    if-gez v16, :cond_13

    .line 150
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    .line 156
    :cond_6
    :goto_2
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    .line 157
    const-string v16, "gravityY"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 159
    if-eqz v6, :cond_7

    .line 160
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 161
    if-eqz v14, :cond_7

    .line 163
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    move/from16 v16, v0

    if-gez v16, :cond_14

    .line 170
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    .line 176
    :cond_8
    :goto_4
    const/high16 v16, -0x1000000

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mColor:I

    .line 177
    const-string v16, "color"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 178
    if-eqz v6, :cond_9

    .line 179
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 180
    if-eqz v14, :cond_9

    .line 182
    :try_start_2
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mColor:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    :cond_9
    :goto_5
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSize:I

    .line 191
    const-string v16, "size"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 192
    if-eqz v6, :cond_a

    .line 193
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 194
    if-eqz v14, :cond_a

    .line 196
    :try_start_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 202
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSize:I

    move/from16 v16, v0

    if-gtz v16, :cond_b

    .line 203
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSize:I

    .line 207
    :cond_b
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowX:F

    .line 208
    const-string v16, "shadowX"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 210
    if-eqz v6, :cond_c

    .line 211
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 212
    if-eqz v14, :cond_c

    .line 214
    :try_start_4
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowX:F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 222
    :cond_c
    :goto_7
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowY:F

    .line 223
    const-string v16, "shadowY"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 225
    if-eqz v6, :cond_d

    .line 226
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 227
    if-eqz v14, :cond_d

    .line 229
    :try_start_5
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowY:F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 237
    :cond_d
    :goto_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F

    .line 238
    const-string v16, "shadowR"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 240
    if-eqz v6, :cond_e

    .line 241
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 242
    if-eqz v14, :cond_e

    .line 244
    :try_start_6
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 250
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_15

    .line 251
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F

    .line 257
    :cond_f
    :goto_a
    const/high16 v16, -0x1000000

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowColor:I

    .line 258
    const-string v16, "shadowColor"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_10

    .line 261
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 262
    if-eqz v14, :cond_10

    .line 264
    :try_start_7
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowColor:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 272
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v14    # "value":Ljava/lang/String;
    :cond_10
    :goto_b
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 273
    .local v7, "nodeList":Lorg/w3c/dom/NodeList;
    sget-object v16, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 274
    const-string v16, "DrawItem_Text_Multi"

    const-string v17, "loadData"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "nodeList "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 275
    :cond_11
    if-eqz v7, :cond_12

    .line 276
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_12

    .line 277
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 278
    .restart local v6    # "node":Lorg/w3c/dom/Node;
    const-string v16, "Text"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mTextNumMax:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_16

    .line 365
    .end local v3    # "i":I
    .end local v6    # "node":Lorg/w3c/dom/Node;
    :cond_12
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 144
    .end local v7    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v6    # "node":Lorg/w3c/dom/Node;
    .restart local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 151
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    move/from16 v16, v0

    if-lez v16, :cond_6

    .line 152
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    goto/16 :goto_2

    .line 164
    :catch_1
    move-exception v2

    .line 165
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    .line 171
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    move/from16 v16, v0

    if-lez v16, :cond_8

    .line 172
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    goto/16 :goto_4

    .line 183
    :catch_2
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 197
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_6

    .line 215
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v2

    .line 216
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_7

    .line 230
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v2

    .line 231
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_8

    .line 245
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v2

    .line 246
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_9

    .line 252
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F

    move/from16 v16, v0

    const/high16 v17, 0x42580000    # 54.0f

    cmpl-float v16, v16, v17

    if-lez v16, :cond_f

    .line 253
    const/high16 v16, 0x42580000    # 54.0f

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F

    goto/16 :goto_a

    .line 265
    :catch_7
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_b

    .line 286
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v14    # "value":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v7    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_16
    const/4 v9, 0x0

    .line 287
    .local v9, "src":Ljava/lang/String;
    const/4 v12, 0x0

    .line 288
    .local v12, "srcStart":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 289
    .local v13, "srcTop":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 290
    .local v11, "srcEnd":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 292
    .local v10, "srcBottom":Landroid/graphics/Bitmap;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 294
    .local v5, "namedNodeMap_text":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v5, :cond_1b

    .line 295
    const/4 v8, 0x0

    .line 296
    .local v8, "node_text":Lorg/w3c/dom/Node;
    const/4 v15, 0x0

    .line 299
    .local v15, "value_text":Ljava/lang/String;
    const/4 v9, 0x0

    .line 300
    const-string v16, "src"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 302
    if-eqz v8, :cond_17

    .line 303
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 307
    :cond_17
    const/4 v12, 0x0

    .line 308
    const-string v16, "srcStart"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 310
    if-eqz v8, :cond_18

    .line 311
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 312
    if-eqz v15, :cond_18

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 319
    :cond_18
    const/4 v11, 0x0

    .line 320
    const-string v16, "srcEnd"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 322
    if-eqz v8, :cond_19

    .line 323
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 324
    if-eqz v15, :cond_19

    .line 325
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 331
    :cond_19
    const/4 v13, 0x0

    .line 332
    const-string v16, "srcTop"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 334
    if-eqz v8, :cond_1a

    .line 335
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 336
    if-eqz v15, :cond_1a

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 343
    :cond_1a
    const/4 v10, 0x0

    .line 344
    const-string v16, "srcBottom"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 346
    if-eqz v8, :cond_1b

    .line 347
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 348
    if-eqz v15, :cond_1b

    .line 349
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 356
    .end local v8    # "node_text":Lorg/w3c/dom/Node;
    .end local v15    # "value_text":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcStart:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTop:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcEnd:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcBottom:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v5    # "namedNodeMap_text":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "src":Ljava/lang/String;
    .end local v10    # "srcBottom":Landroid/graphics/Bitmap;
    .end local v11    # "srcEnd":Landroid/graphics/Bitmap;
    .end local v12    # "srcStart":Landroid/graphics/Bitmap;
    .end local v13    # "srcTop":Landroid/graphics/Bitmap;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c
.end method

.method loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 6
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 455
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "DrawItem_Text_Multi"

    const-string v1, "loadEventListener"

    const/4 v2, 0x4

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

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventDispatch_Base "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventItem_Base.EventListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 461
    :cond_0
    if-nez p4, :cond_1

    .line 462
    new-instance p4, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;

    .end local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-direct {p4, p0, p0}, Landroid/widget/lenovoweather/DrawItem_Base$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Base;Landroid/widget/lenovoweather/EventItem_Base;)V

    .line 465
    .restart local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/DrawItem_Base;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "DrawItem_Text_Multi"

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
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

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mItalic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mItalic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mGravityX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mGravityY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mGravityY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShadowColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShadowColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mTextNumMax:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mTextNumMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mShowIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrc.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcStart.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcStart:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcTop.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcEnd.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcEnd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mSrcBottom.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcBottom:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final translate(Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 8
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 494
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const-string v2, "DrawItem_Text_Multi"

    const-string v3, "translate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CodeThemeScript1Plug "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 499
    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 500
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTranslated:Ljava/util/ArrayList;

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 502
    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTranslated:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrc:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    invoke-virtual {p0, v2}, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->updateContent(I)V

    .line 507
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    return-void
.end method

.method final updateContent(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 471
    sget-object v1, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    const-string v1, "DrawItem_Text_Multi"

    const-string v2, "updateContent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "int "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 474
    :cond_0
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 475
    iget v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mTextNumMax:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 477
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTranslated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 478
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 479
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    .line 481
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mSrcTranslated:Ljava/util/ArrayList;

    iget v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mStartDrawable:Ljava/util/ArrayList;

    iget v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mTopDrawable:Ljava/util/ArrayList;

    iget v4, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mEndDrawable:Ljava/util/ArrayList;

    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mBottomDrawable:Ljava/util/ArrayList;

    iget v6, p0, Landroid/widget/lenovoweather/DrawItem_Text_Multi;->mShowIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 490
    .end local v0    # "size":I
    :cond_1
    return-void
.end method
