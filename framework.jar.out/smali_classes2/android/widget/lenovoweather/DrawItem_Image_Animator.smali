.class Landroid/widget/lenovoweather/DrawItem_Image_Animator;
.super Landroid/widget/lenovoweather/DrawItem_Base;
.source "DrawItem_Image_Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/lenovoweather/DrawItem_Image_Animator$1;,
        Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;,
        Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;,
        Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "DrawItem_Image_Animator"


# instance fields
.field private mBegin:Landroid/graphics/Bitmap;

.field private mBitmapDrawableBegin:Landroid/graphics/drawable/BitmapDrawable;

.field private mBitmapDrawableEnd:Landroid/graphics/drawable/BitmapDrawable;

.field private mEnd:Landroid/graphics/Bitmap;

.field private mEnded:Z

.field private mFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mShowFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStart:J

.field private mTimes:I

.field mVisibleEnd:Z

.field mVisibleEnd_On:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Base;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mFrame:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mShowFrame:Ljava/util/ArrayList;

    .line 49
    const-string v0, "ImageAnimator"

    iput-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private getOneDuration()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 311
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const-string v2, "DrawItem_Image_Animator"

    const-string v3, "getOneDuration"

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object v2, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    .local v0, "size":I
    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mShowFrame:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeEnd:I
    invoke-static {v1}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->access$300(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)I

    move-result v1

    .line 318
    :cond_1
    return v1
.end method


# virtual methods
.method final createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;

    .prologue
    .line 196
    sget-object v2, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "DrawItem_Image_Animator"

    const-string v3, "createView"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewGroup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Context "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LayoutInflater "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CodeThemeScript1Plug "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    :cond_0
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v15, "view":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBegin:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 204
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBegin:Landroid/graphics/Bitmap;

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBitmapDrawableBegin:Landroid/graphics/drawable/BitmapDrawable;

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBitmapDrawableBegin:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnd:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 208
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnd:Landroid/graphics/Bitmap;

    move-object/from16 v0, p4

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBitmapDrawableEnd:Landroid/graphics/drawable/BitmapDrawable;

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;

    .line 211
    .local v12, "frame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mDuration:I
    invoke-static {v12}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->access$100(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;)I

    move-result v2

    if-lez v2, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 216
    .local v14, "size":I
    const/4 v4, 0x0

    .line 217
    .local v4, "time":I
    if-eqz v14, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mShowFrame:Ljava/util/ArrayList;

    add-int/lit8 v3, v14, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeEnd:I
    invoke-static {v2}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->access$300(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)I

    move-result v4

    .line 220
    :cond_4
    new-instance v1, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v12}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->access$200(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;)Landroid/graphics/Bitmap;

    move-result-object v5

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mDuration:I
    invoke-static {v12}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->access$100(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v7}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;-><init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;Landroid/content/res/Resources;ILandroid/graphics/Bitmap;ILandroid/widget/lenovoweather/DrawItem_Image_Animator$1;)V

    .line 222
    .local v1, "showFrame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "showFrame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;
    .end local v4    # "time":I
    .end local v12    # "frame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    .end local v14    # "size":I
    :cond_5
    move-object/from16 v5, p0

    move-object v6, v15

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 225
    invoke-super/range {v5 .. v11}, Landroid/widget/lenovoweather/DrawItem_Base;->createView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/widget/lenovoweather/CodeThemeScript1Plug;)V

    .line 227
    return-void
.end method

.method dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V
    .locals 6
    .param p1, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p2, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 232
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "DrawItem_Image_Animator"

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

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 246
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 241
    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->mTimes_On:Z
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->access$500(Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 242
    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->mTimes:I
    invoke-static {v0}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->access$600(Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->start(I)V

    .line 245
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/lenovoweather/DrawItem_Base;->dealEvent(Landroid/widget/lenovoweather/EventDispatch_Base;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)V

    goto :goto_0
.end method

.method final loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z
    .locals 19
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "root"    # Lorg/w3c/dom/Node;

    .prologue
    .line 64
    sget-object v13, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 65
    const-string v13, "DrawItem_Image_Animator"

    const-string v14, "loadData"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CodeThemeScript1Plug "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Node "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/lenovoweather/DrawItem_Base;->loadData(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Lorg/w3c/dom/Node;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 69
    const/4 v13, 0x0

    .line 189
    :goto_0
    return v13

    .line 72
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 73
    .local v6, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    sget-object v13, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 74
    const-string v13, "DrawItem_Image_Animator"

    const-string v14, "loadData"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "namedNodeMap "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    :cond_2
    if-eqz v6, :cond_3

    .line 77
    const/4 v8, 0x0

    .line 78
    .local v8, "node":Lorg/w3c/dom/Node;
    const/4 v11, 0x0

    .line 81
    .local v11, "value":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mVisibleEnd_On:Z

    .line 82
    const-string v13, "visibleEnd"

    invoke-interface {v6, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 84
    if-eqz v8, :cond_3

    .line 85
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 86
    if-eqz v11, :cond_3

    .line 87
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mVisibleEnd:Z

    .line 88
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mVisibleEnd_On:Z

    .line 93
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v11    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 94
    .local v9, "nodeList":Lorg/w3c/dom/NodeList;
    sget-object v13, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 95
    const-string v13, "DrawItem_Image_Animator"

    const-string v14, "loadData"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "nodeList "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    :cond_4
    if-eqz v9, :cond_b

    .line 97
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v5, v13, :cond_b

    .line 98
    invoke-interface {v9, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 99
    .restart local v8    # "node":Lorg/w3c/dom/Node;
    const-string v13, "FrameBegin"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 101
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 103
    .local v7, "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v7, :cond_5

    .line 104
    const/4 v10, 0x0

    .line 105
    .local v10, "node_frame":Lorg/w3c/dom/Node;
    const/4 v12, 0x0

    .line 108
    .local v12, "value_frame":Ljava/lang/String;
    const-string v13, "src"

    invoke-interface {v7, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 110
    if-eqz v10, :cond_5

    .line 111
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 112
    if-eqz v12, :cond_5

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBegin:Landroid/graphics/Bitmap;

    .line 97
    .end local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v12    # "value_frame":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 118
    :cond_6
    const-string v13, "FrameEnd"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 120
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 122
    .restart local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v7, :cond_5

    .line 123
    const/4 v10, 0x0

    .line 124
    .restart local v10    # "node_frame":Lorg/w3c/dom/Node;
    const/4 v12, 0x0

    .line 127
    .restart local v12    # "value_frame":Ljava/lang/String;
    const-string v13, "src"

    invoke-interface {v7, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 129
    if-eqz v10, :cond_5

    .line 130
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 131
    if-eqz v12, :cond_5

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnd:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 137
    .end local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v12    # "value_frame":Ljava/lang/String;
    :cond_7
    const-string v13, "Frame"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, "frame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 143
    .restart local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v7, :cond_a

    .line 144
    const/4 v10, 0x0

    .line 145
    .restart local v10    # "node_frame":Lorg/w3c/dom/Node;
    const/4 v12, 0x0

    .line 148
    .restart local v12    # "value_frame":Ljava/lang/String;
    const/4 v2, 0x0

    .line 149
    .local v2, "duration":I
    const-string v13, "duration"

    invoke-interface {v7, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 151
    if-eqz v10, :cond_8

    .line 152
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 153
    if-eqz v12, :cond_8

    .line 155
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    :cond_8
    :goto_3
    const/4 v13, 0x1

    if-ge v2, v13, :cond_9

    .line 162
    const/4 v2, 0x1

    .line 164
    :cond_9
    new-instance v4, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;

    .end local v4    # "frame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;-><init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;Landroid/widget/lenovoweather/DrawItem_Image_Animator$1;)V

    .line 165
    .restart local v4    # "frame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    # setter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mDuration:I
    invoke-static {v4, v2}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->access$102(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;I)I

    .line 167
    if-eqz v4, :cond_a

    .line 169
    const/4 v13, 0x0

    # setter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v13}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->access$202(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 170
    const-string v13, "src"

    invoke-interface {v7, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 172
    if-eqz v10, :cond_a

    .line 173
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 174
    if-eqz v12, :cond_a

    .line 175
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/lenovoweather/CodeThemeScript1Plug;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    # setter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v13}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;->access$202(Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 182
    .end local v2    # "duration":I
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v12    # "value_frame":Ljava/lang/String;
    :cond_a
    if-eqz v4, :cond_5

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mFrame:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 156
    .restart local v2    # "duration":I
    .restart local v10    # "node_frame":Lorg/w3c/dom/Node;
    .restart local v12    # "value_frame":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 189
    .end local v2    # "duration":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "frame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$Frame;
    .end local v5    # "i":I
    .end local v7    # "namedNodeMap_frame":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v10    # "node_frame":Lorg/w3c/dom/Node;
    .end local v12    # "value_frame":Ljava/lang/String;
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method final loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z
    .locals 11
    .param p1, "codeThemeScript1Plug"    # Landroid/widget/lenovoweather/CodeThemeScript1Plug;
    .param p2, "eventDispatch_Base"    # Landroid/widget/lenovoweather/EventDispatch_Base;
    .param p3, "root"    # Lorg/w3c/dom/Node;
    .param p4, "eventListener"    # Landroid/widget/lenovoweather/EventItem_Base$EventListener;

    .prologue
    .line 252
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    const-string v5, "DrawItem_Image_Animator"

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

    .line 258
    :cond_0
    if-eqz p4, :cond_1

    .line 259
    const/4 v5, 0x0

    .line 290
    :goto_0
    return v5

    .line 262
    :cond_1
    new-instance p4, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;

    .end local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    const/4 v5, 0x0

    invoke-direct {p4, p0, p0, v5}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;-><init>(Landroid/widget/lenovoweather/DrawItem_Image_Animator;Landroid/widget/lenovoweather/EventItem_Base;Landroid/widget/lenovoweather/DrawItem_Image_Animator$1;)V

    .line 263
    .restart local p4    # "eventListener":Landroid/widget/lenovoweather/EventItem_Base$EventListener;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/lenovoweather/DrawItem_Base;->loadEventListener(Landroid/widget/lenovoweather/CodeThemeScript1Plug;Landroid/widget/lenovoweather/EventDispatch_Base;Lorg/w3c/dom/Node;Landroid/widget/lenovoweather/EventItem_Base$EventListener;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 265
    const/4 v5, 0x0

    goto :goto_0

    .line 268
    :cond_2
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 269
    .local v2, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v2, :cond_3

    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 274
    .local v4, "value":Ljava/lang/String;
    const-string v5, "times"

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 276
    if-eqz v3, :cond_3

    .line 277
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_3

    .line 280
    :try_start_0
    move-object v0, p4

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;

    move-object v5, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # setter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->mTimes:I
    invoke-static {v5, v6}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->access$602(Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;I)I

    .line 282
    move-object v0, p4

    check-cast v0, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;

    move-object v5, v0

    const/4 v6, 0x1

    # setter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->mTimes_On:Z
    invoke-static {v5, v6}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;->access$502(Landroid/widget/lenovoweather/DrawItem_Image_Animator$EventListener;Z)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 283
    .restart local v3    # "node":Lorg/w3c/dom/Node;
    .restart local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method start(I)V
    .locals 7
    .param p1, "times"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 295
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "DrawItem_Image_Animator"

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

    .line 298
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimeStart:J

    .line 299
    iput p1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimes:I

    .line 300
    iget v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimes:I

    if-lez v0, :cond_1

    .line 302
    iput-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnded:Z

    .line 306
    :goto_0
    iget-wide v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimeStart:J

    invoke-virtual {p0, v0, v1}, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->update(J)V

    .line 307
    return-void

    .line 304
    :cond_1
    iput-boolean v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnded:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    sget-object v0, Landroid/widget/lenovoweather/XmlString;->DEBUG_N:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "DrawItem_Image_Animator"

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/lenovoweather/XmlString;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
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

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mVisibleEnd_On:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mVisibleEnd:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mBegin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBegin:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnd:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(J)V
    .locals 13
    .param p1, "now"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 323
    sget-object v5, Landroid/widget/lenovoweather/XmlString;->DEBUG_I:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    const-string v5, "DrawItem_Image_Animator"

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

    .line 326
    :cond_0
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    const/4 v3, 0x0

    .line 331
    .local v3, "running":Z
    invoke-direct {p0}, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->getOneDuration()I

    move-result v2

    .line 333
    .local v2, "oneDuration":I
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimes:I

    if-lez v5, :cond_8

    .line 334
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimeStart:J

    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimes:I

    mul-int/2addr v5, v2

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v5, p1, v6

    if-ltz v5, :cond_6

    .line 336
    iget-boolean v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnded:Z

    if-nez v5, :cond_3

    .line 337
    iput-boolean v11, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mEnded:Z

    .line 338
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    const v6, 0x7f080001

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/lenovoweather/DrawItem_Image_Animator;

    .line 340
    .local v1, "item":Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    if-eqz v1, :cond_3

    iget-boolean v5, v1, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mVisibleEnd_On:Z

    if-eqz v5, :cond_3

    .line 341
    iget-boolean v5, v1, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mVisibleEnd:Z

    if-eqz v5, :cond_5

    .line 342
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .end local v1    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBitmapDrawableEnd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :goto_2
    if-eqz v3, :cond_1

    .line 366
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimeStart:J

    sub-long/2addr p1, v6

    .line 367
    int-to-long v6, v2

    rem-long/2addr p1, v6

    .line 368
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mShowFrame:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;

    .line 369
    .local v4, "showFrame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;
    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeBegin:I
    invoke-static {v4}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->access$800(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, p1, v6

    if-ltz v5, :cond_4

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mTimeEnd:I
    invoke-static {v4}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->access$300(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, p1, v6

    if-gez v5, :cond_4

    .line 370
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    # getter for: Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v4}, Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;->access$900(Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 345
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "showFrame":Landroid/widget/lenovoweather/DrawItem_Image_Animator$ShowFrame;
    .restart local v1    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    :cond_5
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 350
    .end local v1    # "item":Landroid/widget/lenovoweather/DrawItem_Image_Animator;
    :cond_6
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimeStart:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_7

    .line 351
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBitmapDrawableBegin:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 353
    :cond_7
    const/4 v3, 0x1

    goto :goto_2

    .line 355
    :cond_8
    iget v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimes:I

    if-gez v5, :cond_a

    .line 356
    iget-wide v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mTimeStart:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_9

    .line 357
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBitmapDrawableBegin:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 359
    :cond_9
    const/4 v3, 0x1

    goto :goto_2

    .line 362
    :cond_a
    iget-object v5, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mView:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/widget/lenovoweather/DrawItem_Image_Animator;->mBitmapDrawableBegin:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
