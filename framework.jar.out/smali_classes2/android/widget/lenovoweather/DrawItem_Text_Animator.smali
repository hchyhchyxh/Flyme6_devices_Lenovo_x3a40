.class Landroid/widget/lenovoweather/DrawItem_Text_Animator;
.super Landroid/widget/lenovoweather/DrawItem_Base;
.source "DrawItem_Text_Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;,
        Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;,
        Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;,
        Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Text_Animator"


# instance fields
.field private mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

.field private mBeginBottom:Landroid/graphics/Bitmap;

.field private mBeginEnd:Landroid/graphics/Bitmap;

.field private mBeginSrc:Ljava/lang/String;

.field private mBeginStart:Landroid/graphics/Bitmap;

.field private mBeginTop:Landroid/graphics/Bitmap;

.field private mBold:Z

.field private mColor:I

.field private mEnd:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

.field private mEndBottom:Landroid/graphics/Bitmap;

.field private mEndEnd:Landroid/graphics/Bitmap;

.field private mEndSrc:Ljava/lang/String;

.field private mEndStart:Landroid/graphics/Bitmap;

.field private mEndTop:Landroid/graphics/Bitmap;

.field private mEnded:Z

.field private mFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;",
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

.field private mShowFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mTimeStart:J

.field private mTimes:I

.field mVisibleEnd:Z

.field mVisibleEnd_On:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mFrame:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    .line 90
    const-string v0, "TextAnimator"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private getOneDuration()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 727
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    const-string v2, "DrawItem_Text_Animator"

    const-string v3, "getOneDuration"

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 730
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 731
    .local v0, "size":I
    if-eqz v0, :cond_1

    .line 732
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeEnd:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$800(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)I

    move-result v1

    .line 734
    :cond_1
    return v1
.end method

.method private setFrame(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)V
    .locals 6
    .param p1, "frame"    # Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .prologue
    .line 795
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const-string v0, "DrawItem_Text_Animator"

    const-string v1, "setFrame"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShowFrame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 798
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcTranslated:Ljava/lang/String;
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1200(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mStartDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1500(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTopDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1600(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mEndDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1700(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mBottomDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1800(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_1
    return-void
.end method

.method private start(I)V
    .locals 7
    .param p1, "times"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 711
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const-string v0, "DrawItem_Text_Animator"

    const-string v1, "start"

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "int "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 714
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimeStart:J

    .line 715
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimes:I

    .line 716
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimes:I

    if-lez v0, :cond_1

    .line 718
    iput-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnded:Z

    .line 722
    :goto_0
    iget-wide v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimeStart:J

    invoke-virtual {p0, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->update(J)V

    .line 723
    return-void

    .line 720
    :cond_1
    iput-boolean v6, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnded:Z

    goto :goto_0
.end method


# virtual methods
.method final createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 558
    sget-object v3, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    const-string v3, "DrawItem_Text_Animator"

    const-string v4, "createView"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewGroup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Context "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resources "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LayoutInflater "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CodeThemeScript1Plug "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 564
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090019

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 569
    .local v20, "view":Landroid/widget/TextView;
    const/16 v19, 0x0

    .line 570
    .local v19, "style":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBold:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mItalic:Z

    if-eqz v3, :cond_7

    .line 571
    const/16 v19, 0x3

    .line 577
    :cond_1
    :goto_0
    move-object/from16 v0, p6

    iget-object v3, v0, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->mTypeface:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 579
    const/4 v15, 0x1

    .line 580
    .local v15, "gravityX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 581
    const/4 v15, 0x3

    .line 585
    :cond_2
    :goto_1
    const/16 v16, 0x10

    .line 586
    .local v16, "gravityY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 587
    const/16 v16, 0x30

    .line 591
    :cond_3
    :goto_2
    or-int v3, v15, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 593
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mColor:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mSize:I

    if-lez v3, :cond_4

    .line 596
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mSize:I

    int-to-float v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 599
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowR:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowX:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowY:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowColor:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 601
    new-instance v2, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginSrc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginStart:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginTop:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginEnd:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginBottom:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v13}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/content/res/Resources;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .line 603
    new-instance v2, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndSrc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndStart:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndTop:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndEnd:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndBottom:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v13}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/content/res/Resources;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnd:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .line 606
    .local v14, "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mDuration:I
    invoke-static {v14}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$100(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)I

    move-result v3

    if-lez v3, :cond_5

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 611
    .local v18, "size":I
    const/4 v6, 0x0

    .line 612
    .local v6, "time":I
    if-eqz v18, :cond_6

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    add-int/lit8 v4, v18, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeEnd:I
    invoke-static {v3}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$800(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)I

    move-result v6

    .line 615
    :cond_6
    new-instance v2, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mSrc:Ljava/lang/String;
    invoke-static {v14}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$200(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Ljava/lang/String;

    move-result-object v7

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mStart:Landroid/graphics/Bitmap;
    invoke-static {v14}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$300(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;

    move-result-object v8

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mTop:Landroid/graphics/Bitmap;
    invoke-static {v14}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$500(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;

    move-result-object v9

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mEnd:Landroid/graphics/Bitmap;
    invoke-static {v14}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$400(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;

    move-result-object v10

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mBottom:Landroid/graphics/Bitmap;
    invoke-static {v14}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$600(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)Landroid/graphics/Bitmap;

    move-result-object v11

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mDuration:I
    invoke-static {v14}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$100(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;)I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v13}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/content/res/Resources;ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V

    .line 618
    .local v2, "showFrame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 572
    .end local v2    # "showFrame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
    .end local v6    # "time":I
    .end local v14    # "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .end local v15    # "gravityX":I
    .end local v16    # "gravityY":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "size":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBold:Z

    if-eqz v3, :cond_8

    .line 573
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 574
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mItalic:Z

    if-eqz v3, :cond_1

    .line 575
    const/16 v19, 0x2

    goto/16 :goto_0

    .line 582
    .restart local v15    # "gravityX":I
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 583
    const/4 v15, 0x5

    goto/16 :goto_1

    .line 588
    .restart local v16    # "gravityY":I
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 589
    const/16 v16, 0x50

    goto/16 :goto_2

    .line 620
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->setFrame(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)V

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 622
    invoke-super/range {v7 .. v13}, Landroid/widget/lenovoweather/DrawItem_Base;->createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    .line 625
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 626
    return-void
.end method

.method dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V
    .locals 6
    .param p1, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p2, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 631
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-string v0, "DrawItem_Text_Animator"

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

    .line 636
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 645
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 640
    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes_On:Z
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->access$900(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 641
    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->access$1000(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->start(I)V

    .line 644
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base;->dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V

    goto :goto_0
.end method

.method final loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 24
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    .line 109
    sget-object v18, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 110
    const-string v18, "DrawItem_Text_Animator"

    const-string v19, "loadData"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CodeThemeScript1Plug "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Node "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 114
    const/16 v18, 0x0

    .line 551
    :goto_0
    return v18

    .line 117
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 118
    .local v6, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    sget-object v18, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 119
    const-string v18, "DrawItem_Text_Animator"

    const-string v19, "loadData"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "namedNodeMap "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    :cond_2
    if-eqz v6, :cond_11

    .line 122
    const/4 v8, 0x0

    .line 123
    .local v8, "node":Lorg/w3c/dom/Node;
    const/16 v16, 0x0

    .line 126
    .local v16, "value":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBold:Z

    .line 127
    const-string v18, "bold"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 128
    if-eqz v8, :cond_3

    .line 129
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 130
    if-eqz v16, :cond_3

    .line 131
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBold:Z

    .line 136
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mItalic:Z

    .line 137
    const-string v18, "italic"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 139
    if-eqz v8, :cond_4

    .line 140
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 141
    if-eqz v16, :cond_4

    .line 142
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mItalic:Z

    .line 147
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I

    .line 148
    const-string v18, "gravityX"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 150
    if-eqz v8, :cond_5

    .line 151
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 152
    if-eqz v16, :cond_5

    .line 154
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I

    move/from16 v18, v0

    if-gez v18, :cond_19

    .line 161
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I

    .line 167
    :cond_6
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I

    .line 168
    const-string v18, "gravityY"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 170
    if-eqz v8, :cond_7

    .line 171
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 172
    if-eqz v16, :cond_7

    .line 174
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I

    move/from16 v18, v0

    if-gez v18, :cond_1a

    .line 181
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I

    .line 187
    :cond_8
    :goto_4
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mColor:I

    .line 188
    const-string v18, "color"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 189
    if-eqz v8, :cond_9

    .line 190
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 191
    if-eqz v16, :cond_9

    .line 193
    :try_start_2
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mColor:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    :cond_9
    :goto_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mSize:I

    .line 202
    const-string v18, "size"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 203
    if-eqz v8, :cond_a

    .line 204
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 205
    if-eqz v16, :cond_a

    .line 207
    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mSize:I

    move/from16 v18, v0

    if-gtz v18, :cond_b

    .line 214
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mSize:I

    .line 218
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowX:F

    .line 219
    const-string v18, "shadowX"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 221
    if-eqz v8, :cond_c

    .line 222
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 223
    if-eqz v16, :cond_c

    .line 225
    :try_start_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowX:F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 233
    :cond_c
    :goto_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowY:F

    .line 234
    const-string v18, "shadowY"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 236
    if-eqz v8, :cond_d

    .line 237
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 238
    if-eqz v16, :cond_d

    .line 240
    :try_start_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowY:F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 248
    :cond_d
    :goto_8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowR:F

    .line 249
    const-string v18, "shadowR"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 251
    if-eqz v8, :cond_e

    .line 252
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 253
    if-eqz v16, :cond_e

    .line 255
    :try_start_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowR:F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 261
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowR:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1b

    .line 262
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowR:F

    .line 268
    :cond_f
    :goto_a
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowColor:I

    .line 269
    const-string v18, "shadowColor"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 271
    if-eqz v8, :cond_10

    .line 272
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 273
    if-eqz v16, :cond_10

    .line 275
    :try_start_7
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowColor:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 283
    :cond_10
    :goto_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mVisibleEnd_On:Z

    .line 284
    const-string v18, "visibleEnd"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 286
    if-eqz v8, :cond_11

    .line 287
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 288
    if-eqz v16, :cond_11

    .line 289
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mVisibleEnd:Z

    .line 290
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mVisibleEnd_On:Z

    .line 295
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v16    # "value":Ljava/lang/String;
    :cond_11
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 296
    .local v9, "nodeList":Lorg/w3c/dom/NodeList;
    sget-object v18, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 297
    const-string v18, "DrawItem_Text_Animator"

    const-string v19, "loadData"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "nodeList "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    :cond_12
    if-eqz v9, :cond_2a

    .line 299
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_2a

    .line 300
    invoke-interface {v9, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 301
    .restart local v8    # "node":Lorg/w3c/dom/Node;
    const-string v18, "FrameBegin"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 303
    const/4 v11, 0x0

    .line 304
    .local v11, "src":Ljava/lang/String;
    const/4 v14, 0x0

    .line 305
    .local v14, "srcStart":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 306
    .local v15, "srcTop":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 307
    .local v13, "srcEnd":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 309
    .local v12, "srcBottom":Landroid/graphics/Bitmap;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 311
    .local v7, "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v7, :cond_17

    .line 312
    const/4 v10, 0x0

    .line 313
    .local v10, "node_frame":Lorg/w3c/dom/Node;
    const/16 v17, 0x0

    .line 316
    .local v17, "value_frame":Ljava/lang/String;
    const/4 v11, 0x0

    .line 317
    const-string v18, "src"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 319
    if-eqz v10, :cond_13

    .line 320
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 324
    :cond_13
    const/4 v14, 0x0

    .line 325
    const-string v18, "srcStart"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 327
    if-eqz v10, :cond_14

    .line 328
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 329
    if-eqz v17, :cond_14

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 336
    :cond_14
    const/4 v13, 0x0

    .line 337
    const-string v18, "srcEnd"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 339
    if-eqz v10, :cond_15

    .line 340
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 341
    if-eqz v17, :cond_15

    .line 342
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 348
    :cond_15
    const/4 v15, 0x0

    .line 349
    const-string v18, "srcTop"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 351
    if-eqz v10, :cond_16

    .line 352
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 353
    if-eqz v17, :cond_16

    .line 354
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 360
    :cond_16
    const/4 v12, 0x0

    .line 361
    const-string v18, "srcBottom"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 363
    if-eqz v10, :cond_17

    .line 364
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 365
    if-eqz v17, :cond_17

    .line 366
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 373
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v17    # "value_frame":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginSrc:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginStart:Landroid/graphics/Bitmap;

    .line 375
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginTop:Landroid/graphics/Bitmap;

    .line 376
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginEnd:Landroid/graphics/Bitmap;

    .line 377
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginBottom:Landroid/graphics/Bitmap;

    .line 299
    .end local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "src":Ljava/lang/String;
    .end local v12    # "srcBottom":Landroid/graphics/Bitmap;
    .end local v13    # "srcEnd":Landroid/graphics/Bitmap;
    .end local v14    # "srcStart":Landroid/graphics/Bitmap;
    .end local v15    # "srcTop":Landroid/graphics/Bitmap;
    :cond_18
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c

    .line 155
    .end local v5    # "i":I
    .end local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 162
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    .line 163
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityX:I

    goto/16 :goto_2

    .line 175
    :catch_1
    move-exception v3

    .line 176
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    .line 182
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    .line 183
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mGravityY:I

    goto/16 :goto_4

    .line 194
    :catch_2
    move-exception v3

    .line 195
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 208
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 209
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_6

    .line 226
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v3

    .line 227
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_7

    .line 241
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v3

    .line 242
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_8

    .line 256
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v3

    .line 257
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_9

    .line 263
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowR:F

    move/from16 v18, v0

    const/high16 v19, 0x42580000    # 54.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_f

    .line 264
    const/high16 v18, 0x42580000    # 54.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShadowR:F

    goto/16 :goto_a

    .line 276
    :catch_7
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_b

    .line 378
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "value":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_1c
    const-string v18, "FrameEnd"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 380
    const/4 v11, 0x0

    .line 381
    .restart local v11    # "src":Ljava/lang/String;
    const/4 v14, 0x0

    .line 382
    .restart local v14    # "srcStart":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 383
    .restart local v15    # "srcTop":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 384
    .restart local v13    # "srcEnd":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 386
    .restart local v12    # "srcBottom":Landroid/graphics/Bitmap;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 388
    .restart local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v7, :cond_21

    .line 389
    const/4 v10, 0x0

    .line 390
    .restart local v10    # "node_frame":Lorg/w3c/dom/Node;
    const/16 v17, 0x0

    .line 393
    .restart local v17    # "value_frame":Ljava/lang/String;
    const/4 v11, 0x0

    .line 394
    const-string v18, "src"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 396
    if-eqz v10, :cond_1d

    .line 397
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 401
    :cond_1d
    const/4 v14, 0x0

    .line 402
    const-string v18, "srcStart"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 404
    if-eqz v10, :cond_1e

    .line 405
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 406
    if-eqz v17, :cond_1e

    .line 407
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 413
    :cond_1e
    const/4 v13, 0x0

    .line 414
    const-string v18, "srcEnd"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 416
    if-eqz v10, :cond_1f

    .line 417
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 418
    if-eqz v17, :cond_1f

    .line 419
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 425
    :cond_1f
    const/4 v15, 0x0

    .line 426
    const-string v18, "srcTop"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 428
    if-eqz v10, :cond_20

    .line 429
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 430
    if-eqz v17, :cond_20

    .line 431
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 437
    :cond_20
    const/4 v12, 0x0

    .line 438
    const-string v18, "srcBottom"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 440
    if-eqz v10, :cond_21

    .line 441
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 442
    if-eqz v17, :cond_21

    .line 443
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 450
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v17    # "value_frame":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndSrc:Ljava/lang/String;

    .line 451
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndStart:Landroid/graphics/Bitmap;

    .line 452
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndTop:Landroid/graphics/Bitmap;

    .line 453
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndEnd:Landroid/graphics/Bitmap;

    .line 454
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndBottom:Landroid/graphics/Bitmap;

    goto/16 :goto_d

    .line 455
    .end local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "src":Ljava/lang/String;
    .end local v12    # "srcBottom":Landroid/graphics/Bitmap;
    .end local v13    # "srcEnd":Landroid/graphics/Bitmap;
    .end local v14    # "srcStart":Landroid/graphics/Bitmap;
    .end local v15    # "srcTop":Landroid/graphics/Bitmap;
    :cond_22
    const-string v18, "Frame"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 458
    const/4 v4, 0x0

    .line 459
    .local v4, "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 461
    .restart local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v7, :cond_29

    .line 462
    const/4 v10, 0x0

    .line 463
    .restart local v10    # "node_frame":Lorg/w3c/dom/Node;
    const/16 v17, 0x0

    .line 466
    .restart local v17    # "value_frame":Ljava/lang/String;
    const/4 v2, 0x0

    .line 467
    .local v2, "duration":I
    const-string v18, "duration"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 469
    if-eqz v10, :cond_23

    .line 470
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 471
    if-eqz v17, :cond_23

    .line 473
    :try_start_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v2

    .line 479
    :cond_23
    :goto_e
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v2, v0, :cond_24

    .line 480
    const/4 v2, 0x1

    .line 482
    :cond_24
    new-instance v4, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;

    .end local v4    # "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V

    .line 483
    .restart local v4    # "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mDuration:I
    invoke-static {v4, v2}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$102(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;I)I

    .line 485
    if-eqz v4, :cond_29

    .line 487
    const/16 v18, 0x0

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mSrc:Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$202(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    const-string v18, "src"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 490
    if-eqz v10, :cond_25

    .line 491
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mSrc:Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$202(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    :cond_25
    const/16 v18, 0x0

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mStart:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$302(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 496
    const-string v18, "srcStart"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 498
    if-eqz v10, :cond_26

    .line 499
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 500
    if-eqz v17, :cond_26

    .line 501
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mStart:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$302(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 507
    :cond_26
    const/16 v18, 0x0

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mEnd:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$402(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 508
    const-string v18, "srcEnd"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 510
    if-eqz v10, :cond_27

    .line 511
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 512
    if-eqz v17, :cond_27

    .line 513
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mEnd:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$402(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 519
    :cond_27
    const/16 v18, 0x0

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mTop:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$502(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 520
    const-string v18, "srcTop"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 522
    if-eqz v10, :cond_28

    .line 523
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 524
    if-eqz v17, :cond_28

    .line 525
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mTop:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$502(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 531
    :cond_28
    const/16 v18, 0x0

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mBottom:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$602(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 532
    const-string v18, "srcBottom"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 534
    if-eqz v10, :cond_29

    .line 535
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 536
    if-eqz v17, :cond_29

    .line 537
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->mBottom:Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;->access$602(Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 544
    .end local v2    # "duration":I
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v17    # "value_frame":Ljava/lang/String;
    :cond_29
    if-eqz v4, :cond_18

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mFrame:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 474
    .restart local v2    # "duration":I
    .restart local v10    # "node_frame":Lorg/w3c/dom/Node;
    .restart local v17    # "value_frame":Ljava/lang/String;
    :catch_8
    move-exception v3

    .line 475
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_e

    .line 551
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$Frame;
    .end local v5    # "i":I
    .end local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v17    # "value_frame":Ljava/lang/String;
    :cond_2a
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method final loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 11
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 651
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 652
    const-string v5, "DrawItem_Text_Animator"

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

    .line 657
    :cond_0
    if-eqz p4, :cond_1

    .line 658
    const/4 v5, 0x0

    .line 689
    :goto_0
    return v5

    .line 661
    :cond_1
    new-instance p4, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;

    .end local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    const/4 v5, 0x0

    invoke-direct {p4, p0, p0, v5}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Text_Animator;Landroid/widget/lenovoweather/EventItem_Base;Landroid/widget/lenovoweather/DrawItem_Text_Animator$1;)V

    .line 662
    .restart local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/DrawItem_Base;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 664
    const/4 v5, 0x0

    goto :goto_0

    .line 667
    :cond_2
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 668
    .local v2, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v2, :cond_3

    .line 669
    const/4 v3, 0x0

    .line 670
    .local v3, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 673
    .local v4, "value":Ljava/lang/String;
    const-string v5, "times"

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 675
    if-eqz v3, :cond_3

    .line 676
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 677
    if-eqz v4, :cond_3

    .line 679
    :try_start_0
    move-object v0, p4

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;

    move-object v5, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes:I
    invoke-static {v5, v6}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->access$1002(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;I)I

    .line 681
    move-object v0, p4

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;

    move-object v5, v0

    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->mTimes_On:Z
    invoke-static {v5, v6}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;->access$902(Landroid/widget/lenovoweather/DrawItem_Text_Animator$EventListener;Z)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 682
    .restart local v3    # "node":Lorg/w3c/dom/Node;
    .restart local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "DrawItem_Text_Animator"

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/lenovoweather/DrawItem_Base;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mVisibleEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mVisibleEnd_On:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mVisibleEnd:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBeginSrc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBeginStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginStart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBeginEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginEnd:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBeginTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginTop:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBeginBottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBeginBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEndSrc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEndStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndStart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEndEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndEnd:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEndTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndTop:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEndBottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEndBottom:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final translate(Landroid/widget/lenovoweather/CodeThemeScript1Plug;J)V
    .locals 8
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "now"    # J

    .prologue
    .line 694
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    const-string v2, "DrawItem_Text_Animator"

    const-string v3, "translate"

    const/4 v4, 0x2

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

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "long "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 698
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcOrigin:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1300(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcTranslated:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1202(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .line 701
    .local v1, "showFrame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcOrigin:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1300(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcTranslated:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1202(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 704
    .end local v1    # "showFrame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
    :cond_1
    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnd:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    iget-object v3, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnd:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcOrigin:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1300(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mSrcTranslated:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1202(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    invoke-virtual {p0, p2, p3}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->update(J)V

    .line 707
    return-void
.end method

.method update(J)V
    .locals 13
    .param p1, "now"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 739
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 740
    const-string v5, "DrawItem_Text_Animator"

    const-string v6, "update"

    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "long "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 742
    :cond_0
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 746
    :cond_2
    const/4 v4, 0x0

    .line 747
    .local v4, "running":Z
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->getOneDuration()I

    move-result v3

    .line 749
    .local v3, "oneDuration":I
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimes:I

    if-lez v5, :cond_8

    .line 750
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimeStart:J

    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimes:I

    mul-int/2addr v5, v3

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v5, p1, v6

    if-ltz v5, :cond_6

    .line 752
    iget-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnded:Z

    if-nez v5, :cond_3

    .line 753
    iput-boolean v11, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnded:Z

    .line 754
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    const v6, 0x7f080001

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/lenovoweather/DrawItem_Text_Animator;

    .line 756
    .local v2, "item":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    if-eqz v2, :cond_3

    iget-boolean v5, v2, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mVisibleEnd_On:Z

    if-eqz v5, :cond_3

    .line 757
    iget-boolean v5, v2, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mVisibleEnd:Z

    if-eqz v5, :cond_5

    .line 758
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .end local v2    # "item":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mEnd:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->setFrame(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)V

    .line 781
    :goto_2
    if-eqz v4, :cond_1

    .line 782
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimeStart:J

    sub-long/2addr p1, v6

    .line 783
    int-to-long v6, v3

    rem-long/2addr p1, v6

    .line 784
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    .line 785
    .local v0, "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeBegin:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$1400(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, p1, v6

    if-ltz v5, :cond_4

    # getter for: Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->mTimeEnd:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;->access$800(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, p1, v6

    if-gez v5, :cond_4

    .line 786
    invoke-direct {p0, v0}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->setFrame(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)V

    goto :goto_0

    .line 761
    .end local v0    # "frame":Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "item":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    :cond_5
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mView:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 766
    .end local v2    # "item":Landroid/widget/lenovoweather/DrawItem_Text_Animator;
    :cond_6
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimeStart:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_7

    .line 767
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->setFrame(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)V

    goto :goto_2

    .line 769
    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    .line 771
    :cond_8
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimes:I

    if-gez v5, :cond_a

    .line 772
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mTimeStart:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_9

    .line 773
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->setFrame(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)V

    goto :goto_2

    .line 775
    :cond_9
    const/4 v4, 0x1

    goto :goto_2

    .line 778
    :cond_a
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->mBegin:Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;

    invoke-direct {p0, v5}, Landroid/widget/lenovoweather/DrawItem_Text_Animator;->setFrame(Landroid/widget/lenovoweather/DrawItem_Text_Animator$ShowFrame;)V

    goto :goto_2
.end method
