.class public Llenovo/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field private final mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field private mCurrentOffset:I

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginLeft:I

.field private mExpandedMarginRight:I

.field private mExpandedMarginTop:I

.field private mLastInsets:Landroid/view/WindowInsets;

.field private mOnOffsetChangedListener:Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

.field private mScrimsAreShown:Z

.field private mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Llenovo/widget/Toolbar;

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    iput-boolean v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 100
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 127
    new-instance v6, Llenovo/design/widget/CollapsingTextHelper;

    invoke-direct {v6, p0}, Llenovo/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    .line 128
    iget-object v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    sget-object v7, Llenovo/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Llenovo/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    sget-object v6, Lcom/lenovo/internal/R$styleable;->CollapsingToolbarLayout:[I

    const v7, 0x90302f3

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    const/16 v7, 0xc

    const v8, 0x800053

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 137
    iget-object v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    const/16 v7, 0xb

    const v8, 0x800013

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 141
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    iput v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    iput v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    iput v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    .line 144
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_6

    move v1, v4

    .line 146
    .local v1, "isRtl":Z
    :goto_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 149
    .local v3, "marginStart":I
    if-eqz v1, :cond_7

    .line 150
    iput v3, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    .line 155
    .end local v3    # "marginStart":I
    :cond_0
    :goto_1
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 158
    .local v2, "marginEnd":I
    if-eqz v1, :cond_8

    .line 159
    iput v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    .line 164
    .end local v2    # "marginEnd":I
    :cond_1
    :goto_2
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 165
    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 168
    :cond_2
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 173
    :cond_3
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 175
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Llenovo/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    const v6, 0x90302f6

    invoke-virtual {v4, v6}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 180
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    const v6, 0x10301c6

    invoke-virtual {v4, v6}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 184
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v4, v6}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 189
    :cond_4
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 190
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v4, v6}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 196
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Llenovo/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 197
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Llenovo/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const/16 v4, 0xa

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-virtual {p0, v5}, Llenovo/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 205
    new-instance v4, Llenovo/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v4, p0}, Llenovo/design/widget/CollapsingToolbarLayout$1;-><init>(Llenovo/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {p0, v4}, Llenovo/design/widget/CollapsingToolbarLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 215
    return-void

    .end local v1    # "isRtl":Z
    :cond_6
    move v1, v5

    .line 144
    goto/16 :goto_0

    .line 152
    .restart local v1    # "isRtl":Z
    .restart local v3    # "marginStart":I
    :cond_7
    iput v3, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    goto/16 :goto_1

    .line 161
    .end local v3    # "marginStart":I
    .restart local v2    # "marginEnd":I
    :cond_8
    iput v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    goto/16 :goto_2
.end method

.method static synthetic access$000(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 86
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method static synthetic access$002(Llenovo/design/widget/CollapsingToolbarLayout;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;
    .param p1, "x1"    # Landroid/view/WindowInsets;

    .prologue
    .line 86
    iput-object p1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic access$200(Llenovo/design/widget/CollapsingToolbarLayout;I)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Llenovo/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void
.end method

.method static synthetic access$302(Llenovo/design/widget/CollapsingToolbarLayout;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    return p1
.end method

.method static synthetic access$400(Landroid/view/View;)Llenovo/design/widget/ViewOffsetHelper;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-static {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Llenovo/design/widget/ViewOffsetHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 86
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Llenovo/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 86
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Llenovo/design/widget/CollapsingToolbarLayout;)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 86
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->showScrim()V

    return-void
.end method

.method static synthetic access$800(Llenovo/design/widget/CollapsingToolbarLayout;)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 86
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->hideScrim()V

    return-void
.end method

.method static synthetic access$900(Llenovo/design/widget/CollapsingToolbarLayout;)Llenovo/design/widget/CollapsingTextHelper;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/CollapsingToolbarLayout;

    .prologue
    .line 86
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    return-object v0
.end method

.method private animateScrim(I)V
    .locals 2
    .param p1, "targetAlpha"    # I

    .prologue
    .line 486
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 487
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-nez v0, :cond_1

    .line 488
    invoke-static {}, Llenovo/design/widget/ViewUtils;->createAnimator()Llenovo/design/widget/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    .line 489
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 490
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    sget-object v1, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 491
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    new-instance v1, Llenovo/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Llenovo/design/widget/CollapsingToolbarLayout$2;-><init>(Llenovo/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 501
    :cond_0
    :goto_0
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    iget v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1, p1}, Llenovo/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 502
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->start()V

    .line 503
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_0
.end method

.method private ensureToolbar()V
    .locals 7

    .prologue
    .line 295
    iget-boolean v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v5, :cond_0

    .line 331
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v2, 0x0

    .local v2, "fallback":Llenovo/widget/Toolbar;
    const/4 v4, 0x0

    .line 301
    .local v4, "selected":Llenovo/widget/Toolbar;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 302
    invoke-virtual {p0, v3}, Llenovo/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Llenovo/widget/Toolbar;

    if-eqz v5, :cond_4

    .line 304
    iget v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 306
    iget v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_3

    move-object v4, v0

    .line 308
    check-cast v4, Llenovo/widget/Toolbar;

    .line 323
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 325
    move-object v4, v2

    .line 328
    :cond_2
    iput-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    .line 329
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 330
    const/4 v5, 0x0

    iput-boolean v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    goto :goto_0

    .line 311
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    if-nez v2, :cond_4

    move-object v2, v0

    .line 313
    check-cast v2, Llenovo/widget/Toolbar;

    .line 301
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move-object v4, v0

    .line 317
    check-cast v4, Llenovo/widget/Toolbar;

    .line 318
    goto :goto_2
.end method

.method private static getViewOffsetHelper(Landroid/view/View;)Llenovo/design/widget/ViewOffsetHelper;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x90b001a

    .line 403
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/ViewOffsetHelper;

    .line 404
    .local v0, "offsetHelper":Llenovo/design/widget/ViewOffsetHelper;
    if-nez v0, :cond_0

    .line 405
    new-instance v0, Llenovo/design/widget/ViewOffsetHelper;

    .end local v0    # "offsetHelper":Llenovo/design/widget/ViewOffsetHelper;
    invoke-direct {v0, p0}, Llenovo/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 406
    .restart local v0    # "offsetHelper":Llenovo/design/widget/ViewOffsetHelper;
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 408
    :cond_0
    return-object v0
.end method

.method private hideScrim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-boolean v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    invoke-direct {p0, v1}, Llenovo/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    .line 481
    :goto_0
    iput-boolean v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    .line 483
    :cond_0
    return-void

    .line 479
    :cond_1
    invoke-direct {p0, v1}, Llenovo/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_0
.end method

.method private setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 506
    iget v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-eq p1, v1, :cond_1

    .line 507
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 508
    .local v0, "contentScrim":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v1}, Llenovo/widget/Toolbar;->postInvalidateOnAnimation()V

    .line 511
    :cond_0
    iput p1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    .line 512
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    .line 514
    .end local v0    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private showScrim()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 464
    iget-boolean v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    invoke-direct {p0, v1}, Llenovo/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    .line 470
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    .line 472
    :cond_0
    return-void

    .line 468
    :cond_1
    invoke-direct {p0, v1}, Llenovo/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_0
.end method

.method private updateDummyView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 334
    iget-boolean v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 337
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 338
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 341
    :cond_0
    iget-boolean v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 343
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 345
    :cond_1
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 346
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v3}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 349
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 721
    instance-of v0, p1, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 249
    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    if-nez v2, :cond_0

    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v2, :cond_0

    .line 250
    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 251
    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    :cond_0
    iget-boolean v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, p1}, Llenovo/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 260
    :cond_1
    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v2, :cond_2

    .line 261
    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v2, :cond_3

    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 262
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_2

    .line 263
    iget-object v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 266
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    .end local v0    # "topInset":I
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 261
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 276
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 277
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .prologue
    .line 726
    new-instance v0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Llenovo/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Llenovo/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 731
    new-instance v0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 736
    new-instance v0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Llenovo/design/widget/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Llenovo/design/widget/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0
.end method

.method final getScrimTriggerOffset()I
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getMinimumHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 431
    iget-boolean v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Llenovo/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 222
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 223
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Llenovo/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Llenovo/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Llenovo/design/widget/CollapsingToolbarLayout;Llenovo/design/widget/CollapsingToolbarLayout$1;)V

    iput-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 227
    :cond_0
    check-cast v0, Llenovo/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Llenovo/design/widget/AppBarLayout;->addOnOffsetChangedListener(Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 229
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 235
    .local v0, "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v1, v0, Llenovo/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Llenovo/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Llenovo/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Llenovo/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 239
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 240
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 359
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v3

    .local v3, "z":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 363
    invoke-virtual {p0, v1}, Llenovo/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 367
    .local v2, "insetTop":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v2, :cond_0

    .line 370
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 374
    .end local v2    # "insetTop":I
    :cond_0
    invoke-static {v0}, Llenovo/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Llenovo/design/widget/ViewOffsetHelper;

    move-result-object v4

    invoke-virtual {v4}, Llenovo/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 379
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    iget-object v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v4, v5}, Llenovo/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 380
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, p5, v6

    iget-object v7, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5, v6, v7, p5}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 383
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    iget-object v6, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    add-int/2addr v6, v7

    sub-int v7, p4, p2

    iget v8, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    sub-int/2addr v7, v8

    sub-int v8, p5, p3

    iget v9, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 389
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Llenovo/design/widget/CollapsingTextHelper;->recalculate()V

    .line 393
    :cond_2
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    if-eqz v4, :cond_4

    .line 394
    iget-boolean v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Llenovo/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 396
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v5}, Llenovo/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Llenovo/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_3
    iget-object v4, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mToolbar:Llenovo/widget/Toolbar;

    invoke-virtual {v4}, Llenovo/widget/Toolbar;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Llenovo/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 400
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 353
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 354
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 355
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 289
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 661
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 662
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Llenovo/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 641
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 642
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Llenovo/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 650
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    .line 651
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 526
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 527
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 531
    :cond_0
    iput-object p1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 532
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 533
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 534
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 535
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    .line 537
    :cond_1
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Llenovo/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 548
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Llenovo/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 549
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 560
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 562
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Llenovo/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 689
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextColor(I)V

    .line 690
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 700
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 701
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Llenovo/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 680
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 681
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 586
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 587
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 591
    :cond_0
    iput-object p1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 592
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 593
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 594
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    .line 596
    :cond_1
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Llenovo/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 609
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Llenovo/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 610
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 621
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 622
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 420
    iget-object v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 445
    iget-boolean v0, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 446
    iput-boolean p1, p0, Llenovo/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 447
    invoke-direct {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 448
    invoke-virtual {p0}, Llenovo/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 450
    :cond_0
    return-void
.end method
