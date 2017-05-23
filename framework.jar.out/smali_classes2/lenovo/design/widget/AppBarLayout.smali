.class public Llenovo/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Llenovo/design/widget/AppBarLayout$Behavior;,
        Llenovo/design/widget/AppBarLayout$LayoutParams;,
        Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation

.annotation runtime Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Llenovo/design/widget/AppBarLayout$Behavior;
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field private static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field private static final PENDING_ACTION_COLLAPSED:I = 0x2

.field private static final PENDING_ACTION_EXPANDED:I = 0x1

.field private static final PENDING_ACTION_NONE:I


# instance fields
.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroid/view/WindowInsets;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mTargetElevation:F

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    iput v1, p0, Llenovo/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 123
    iput v1, p0, Llenovo/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 124
    iput v1, p0, Llenovo/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 130
    iput v3, p0, Llenovo/design/widget/AppBarLayout;->mPendingAction:I

    .line 142
    invoke-virtual {p0, v4}, Llenovo/design/widget/AppBarLayout;->setOrientation(I)V

    .line 144
    sget-object v1, Lcom/lenovo/internal/R$styleable;->AppBarLayout:[I

    const v2, 0x90302f4

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Llenovo/design/widget/AppBarLayout;->mTargetElevation:F

    .line 147
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Llenovo/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Llenovo/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-static {p0}, Llenovo/design/widget/ViewUtils;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Llenovo/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    .line 158
    iget v1, p0, Llenovo/design/widget/AppBarLayout;->mTargetElevation:F

    invoke-virtual {p0, v1}, Llenovo/design/widget/AppBarLayout;->setElevation(F)V

    .line 160
    new-instance v1, Llenovo/design/widget/AppBarLayout$1;

    invoke-direct {v1, p0}, Llenovo/design/widget/AppBarLayout$1;-><init>(Llenovo/design/widget/AppBarLayout;)V

    invoke-virtual {p0, v1}, Llenovo/design/widget/AppBarLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Llenovo/design/widget/AppBarLayout;Landroid/view/WindowInsets;)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/AppBarLayout;
    .param p1, "x1"    # Landroid/view/WindowInsets;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Llenovo/design/widget/AppBarLayout;->setWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$200(Llenovo/design/widget/AppBarLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/AppBarLayout;

    .prologue
    .line 97
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private setWindowInsets(Landroid/view/WindowInsets;)V
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 466
    const/4 v3, -0x1

    iput v3, p0, Llenovo/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 467
    iput-object p1, p0, Llenovo/design/widget/AppBarLayout;->mLastInsets:Landroid/view/WindowInsets;

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 471
    invoke-virtual {p0, v1}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 470
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1
    .param p1, "listener"    # Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Llenovo/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 262
    instance-of v0, p1, Llenovo/design/widget/AppBarLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->generateDefaultLayoutParams()Llenovo/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->generateDefaultLayoutParams()Llenovo/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Llenovo/design/widget/AppBarLayout$LayoutParams;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Llenovo/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Llenovo/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Llenovo/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Llenovo/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Llenovo/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Llenovo/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/design/widget/AppBarLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 272
    new-instance v0, Llenovo/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/design/widget/AppBarLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 277
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Llenovo/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 282
    :goto_0
    return-object v0

    .line 279
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Llenovo/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 282
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Llenovo/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final getDownNestedPreScrollRange()I
    .locals 8

    .prologue
    .line 344
    iget v6, p0, Llenovo/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 346
    iget v5, p0, Llenovo/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 375
    :goto_0
    return v5

    .line 349
    :cond_0
    const/4 v5, 0x0

    .line 350
    .local v5, "range":I
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 351
    invoke-virtual {p0, v3}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/AppBarLayout$LayoutParams;

    .line 353
    .local v4, "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 356
    .local v1, "childHeight":I
    :goto_2
    iget v2, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 358
    .local v2, "flags":I
    and-int/lit8 v6, v2, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 360
    iget v6, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 362
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_3

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 350
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 353
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    .line 367
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    :cond_3
    add-int/2addr v5, v1

    goto :goto_3

    .line 369
    :cond_4
    if-lez v5, :cond_1

    .line 375
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    :cond_5
    iput v5, p0, Llenovo/design/widget/AppBarLayout;->mDownPreScrollRange:I

    goto :goto_0
.end method

.method final getDownNestedScrollRange()I
    .locals 9

    .prologue
    .line 382
    iget v7, p0, Llenovo/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 384
    iget v5, p0, Llenovo/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 414
    :goto_0
    return v5

    .line 387
    :cond_0
    const/4 v5, 0x0

    .line 388
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    .local v6, "z":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 389
    invoke-virtual {p0, v3}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/AppBarLayout$LayoutParams;

    .line 391
    .local v4, "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 394
    .local v1, "childHeight":I
    :goto_2
    iget v7, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 396
    iget v2, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 398
    .local v2, "flags":I
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_3

    .line 400
    add-int/2addr v5, v1

    .line 402
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_2

    .line 406
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v7

    sub-int/2addr v5, v7

    goto :goto_0

    .line 391
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    .line 388
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    :cond_3
    iput v5, p0, Llenovo/design/widget/AppBarLayout;->mDownScrollRange:I

    goto :goto_0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v4, p0, Llenovo/design/widget/AppBarLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v4, :cond_1

    iget-object v4, p0, Llenovo/design/widget/AppBarLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 419
    .local v2, "topInset":I
    :goto_0
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getMinimumHeight()I

    move-result v1

    .line 420
    .local v1, "minHeight":I
    if-eqz v1, :cond_2

    .line 422
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    .line 427
    :cond_0
    :goto_1
    return v3

    .end local v1    # "minHeight":I
    .end local v2    # "topInset":I
    :cond_1
    move v2, v3

    .line 418
    goto :goto_0

    .line 426
    .restart local v1    # "minHeight":I
    .restart local v2    # "topInset":I
    :cond_2
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    .line 427
    .local v0, "childCount":I
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    goto :goto_1
.end method

.method getPendingAction()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Llenovo/design/widget/AppBarLayout;->mPendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Llenovo/design/widget/AppBarLayout;->mTargetElevation:F

    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 10

    .prologue
    .line 295
    iget v8, p0, Llenovo/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 296
    iget v8, p0, Llenovo/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 326
    :goto_0
    return v8

    .line 299
    :cond_0
    const/4 v5, 0x0

    .line 300
    .local v5, "range":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    .local v7, "z":I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 301
    invoke-virtual {p0, v3}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/AppBarLayout$LayoutParams;

    .line 303
    .local v4, "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 306
    .local v1, "childHeight":I
    :goto_2
    iget v2, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 308
    .local v2, "flags":I
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_1

    .line 310
    iget v8, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget v9, v4, Llenovo/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 312
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_3

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v8

    sub-int/2addr v5, v8

    .line 325
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Llenovo/design/widget/AppBarLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v8, :cond_4

    iget-object v8, p0, Llenovo/design/widget/AppBarLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 326
    .local v6, "top":I
    :goto_3
    sub-int v8, v5, v6

    iput v8, p0, Llenovo/design/widget/AppBarLayout;->mTotalScrollRange:I

    goto :goto_0

    .line 303
    .end local v6    # "top":I
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    .line 300
    .restart local v1    # "childHeight":I
    .restart local v2    # "flags":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "flags":I
    .end local v4    # "lp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3
.end method

.method final getUpNestedPreScrollRange()I
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method final hasChildWithInterpolator()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Llenovo/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method final hasScrollableChildren()Z
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, -0x1

    .line 197
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 200
    iput v5, p0, Llenovo/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 201
    iput v5, p0, Llenovo/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 202
    iput v5, p0, Llenovo/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 204
    const/4 v5, 0x0

    iput-boolean v5, p0, Llenovo/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 205
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    .local v4, "z":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 206
    invoke-virtual {p0, v2}, Llenovo/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/design/widget/AppBarLayout$LayoutParams;

    .line 208
    .local v1, "childLp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Llenovo/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 210
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v3, :cond_1

    .line 211
    const/4 v5, 0x1

    iput-boolean v5, p0, Llenovo/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 215
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    return-void

    .line 205
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childLp":Llenovo/design/widget/AppBarLayout$LayoutParams;
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeOnOffsetChangedListener(Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1
    .param p1, "listener"    # Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    iput v0, p0, Llenovo/design/widget/AppBarLayout;->mPendingAction:I

    .line 462
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 239
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->isLaidOut()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Llenovo/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 240
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 2
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 255
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Llenovo/design/widget/AppBarLayout;->mPendingAction:I

    .line 257
    invoke-virtual {p0}, Llenovo/design/widget/AppBarLayout;->requestLayout()V

    .line 258
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 219
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 445
    iput p1, p0, Llenovo/design/widget/AppBarLayout;->mTargetElevation:F

    .line 446
    return-void
.end method
