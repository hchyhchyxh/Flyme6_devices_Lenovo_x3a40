.class public Llenovo/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Llenovo/design/widget/TabLayout$SlidingTabStrip;,
        Llenovo/design/widget/TabLayout$TabView;,
        Llenovo/design/widget/TabLayout$Tab;,
        Llenovo/design/widget/TabLayout$OnTabSelectedListener;,
        Llenovo/design/widget/TabLayout$TabGravity;,
        Llenovo/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38


# instance fields
.field private mContentInsetStart:I

.field private mIndicatorAnimator:Llenovo/design/widget/ValueAnimatorCompat;

.field private mMode:I

.field private mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

.field private final mRequestedTabMaxWidth:I

.field private mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

.field private mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabGravity:I

.field private mTabMaxWidth:I

.field private final mTabMinWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llenovo/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 198
    const v2, 0x7fffffff

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabMaxWidth:I

    .line 224
    invoke-virtual {p0, v5}, Llenovo/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 226
    invoke-virtual {p0, v6}, Llenovo/design/widget/TabLayout;->setFillViewport(Z)V

    .line 229
    new-instance v2, Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;-><init>(Llenovo/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    .line 230
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Llenovo/design/widget/TabLayout;->addView(Landroid/view/View;II)V

    .line 232
    sget-object v2, Lcom/lenovo/internal/R$styleable;->TabLayout:[I

    const v3, 0x90302e9

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v3}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 237
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 239
    const/16 v2, 0x8

    const v3, 0x90302eb

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabTextAppearance:I

    .line 242
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingBottom:I

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingEnd:I

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingTop:I

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingStart:I

    .line 244
    const/16 v2, 0xb

    iget v3, p0, Llenovo/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingStart:I

    .line 246
    const/16 v2, 0xc

    iget v3, p0, Llenovo/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingTop:I

    .line 248
    const/16 v2, 0xd

    iget v3, p0, Llenovo/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 250
    const/16 v2, 0xe

    iget v3, p0, Llenovo/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 254
    iget v2, p0, Llenovo/design/widget/TabLayout;->mTabTextAppearance:I

    invoke-direct {p0, v2}, Llenovo/design/widget/TabLayout;->loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 256
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 261
    :cond_0
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 266
    .local v1, "selected":I
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Llenovo/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 269
    .end local v1    # "selected":I
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabMinWidth:I

    .line 270
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 271
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 272
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mContentInsetStart:I

    .line 273
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mMode:I

    .line 274
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/TabLayout;->mTabGravity:I

    .line 275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->applyModeAndGravity()V

    .line 279
    return-void
.end method

.method static synthetic access$100(Llenovo/design/widget/TabLayout;I)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Llenovo/design/widget/TabLayout;->updateTab(I)V

    return-void
.end method

.method static synthetic access$1000(Llenovo/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1100(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method static synthetic access$1202(Llenovo/design/widget/TabLayout;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Llenovo/design/widget/TabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic access$1300(Llenovo/design/widget/TabLayout;I)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Llenovo/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Llenovo/design/widget/TabLayout;)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->updateTabViewsLayoutParams()V

    return-void
.end method

.method static synthetic access$1502(Llenovo/design/widget/TabLayout;Llenovo/design/widget/ValueAnimatorCompat;)Llenovo/design/widget/ValueAnimatorCompat;
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;
    .param p1, "x1"    # Llenovo/design/widget/ValueAnimatorCompat;

    .prologue
    .line 94
    iput-object p1, p0, Llenovo/design/widget/TabLayout;->mIndicatorAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    return-object p1
.end method

.method static synthetic access$200(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic access$300(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabPaddingStart:I

    return v0
.end method

.method static synthetic access$400(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabPaddingEnd:I

    return v0
.end method

.method static synthetic access$600(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabPaddingBottom:I

    return v0
.end method

.method static synthetic access$700(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabMinWidth:I

    return v0
.end method

.method static synthetic access$800(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic access$900(Llenovo/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 94
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabTextAppearance:I

    return v0
.end method

.method private addTabView(Llenovo/design/widget/TabLayout$Tab;IZ)V
    .locals 3
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 675
    invoke-direct {p0, p1}, Llenovo/design/widget/TabLayout;->createTabView(Llenovo/design/widget/TabLayout$Tab;)Llenovo/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 676
    .local v0, "tabView":Llenovo/design/widget/TabLayout$TabView;
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 677
    if-eqz p3, :cond_0

    .line 678
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 680
    :cond_0
    return-void
.end method

.method private addTabView(Llenovo/design/widget/TabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 667
    invoke-direct {p0, p1}, Llenovo/design/widget/TabLayout;->createTabView(Llenovo/design/widget/TabLayout$Tab;)Llenovo/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 668
    .local v0, "tabView":Llenovo/design/widget/TabLayout$TabView;
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    if-eqz p2, :cond_0

    .line 670
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 672
    :cond_0
    return-void
.end method

.method private animateToTab(I)V
    .locals 5
    .param p1, "newPosition"    # I

    .prologue
    const/16 v4, 0x12c

    const/4 v3, 0x0

    .line 760
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 794
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v3, v2}, Llenovo/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 772
    :cond_2
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 773
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v3}, Llenovo/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 775
    .local v1, "targetScrollX":I
    if-eq v0, v1, :cond_4

    .line 776
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_3

    .line 777
    invoke-static {}, Llenovo/design/widget/ViewUtils;->createAnimator()Llenovo/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Llenovo/design/widget/TabLayout;->mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    .line 778
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    sget-object v3, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Llenovo/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 779
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v4}, Llenovo/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 780
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    new-instance v3, Llenovo/design/widget/TabLayout$2;

    invoke-direct {v3, p0}, Llenovo/design/widget/TabLayout$2;-><init>(Llenovo/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Llenovo/design/widget/ValueAnimatorCompat;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 788
    :cond_3
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 789
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mScrollAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Llenovo/design/widget/ValueAnimatorCompat;->start()V

    .line 793
    :cond_4
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2, p1, v4}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_0
.end method

.method private applyModeAndGravity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "paddingStart":I
    iget v1, p0, Llenovo/design/widget/TabLayout;->mMode:I

    if-nez v1, :cond_0

    .line 861
    iget v1, p0, Llenovo/design/widget/TabLayout;->mContentInsetStart:I

    iget v2, p0, Llenovo/design/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 863
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0, v3, v3, v3}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setPaddingRelative(IIII)V

    .line 865
    iget v1, p0, Llenovo/design/widget/TabLayout;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 874
    :goto_0
    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->updateTabViewsLayoutParams()V

    .line 875
    return-void

    .line 867
    :pswitch_0
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 870
    :pswitch_1
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v1, 0x0

    .line 841
    iget v4, p0, Llenovo/design/widget/TabLayout;->mMode:I

    if-nez v4, :cond_1

    .line 842
    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v4, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 843
    .local v2, "selectedChild":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, "nextChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 847
    .local v3, "selectedWidth":I
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 849
    .local v1, "nextWidth":I
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 854
    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v2    # "selectedChild":Landroid/view/View;
    .end local v3    # "selectedWidth":I
    :cond_1
    return v1

    .line 843
    .restart local v2    # "selectedChild":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "nextChild":Landroid/view/View;
    :cond_3
    move v3, v1

    .line 846
    goto :goto_1
.end method

.method private configureTab(Llenovo/design/widget/TabLayout$Tab;I)V
    .locals 3
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
    .param p2, "position"    # I

    .prologue
    .line 650
    invoke-virtual {p1, p2}, Llenovo/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 651
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 653
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 654
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 655
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/TabLayout$Tab;

    invoke-virtual {v2, v1}, Llenovo/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 1535
    new-array v2, v3, [[I

    .line 1536
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 1537
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 1539
    .local v1, "i":I
    sget-object v3, Llenovo/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1540
    aput p1, v0, v1

    .line 1541
    add-int/lit8 v1, v1, 0x1

    .line 1544
    sget-object v3, Llenovo/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1545
    aput p0, v0, v1

    .line 1546
    add-int/lit8 v1, v1, 0x1

    .line 1548
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 683
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 685
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Llenovo/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 686
    return-object v0
.end method

.method private createTabView(Llenovo/design/widget/TabLayout$Tab;)Llenovo/design/widget/TabLayout$TabView;
    .locals 2
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 633
    new-instance v0, Llenovo/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Llenovo/design/widget/TabLayout$TabView;-><init>(Llenovo/design/widget/TabLayout;Landroid/content/Context;Llenovo/design/widget/TabLayout$Tab;)V

    .line 634
    .local v0, "tabView":Llenovo/design/widget/TabLayout$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 636
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 637
    new-instance v1, Llenovo/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Llenovo/design/widget/TabLayout$1;-><init>(Llenovo/design/widget/TabLayout;)V

    iput-object v1, p0, Llenovo/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 645
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Llenovo/design/widget/TabLayout$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    return-object v0
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .prologue
    .line 700
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getScrollPosition()F
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "textAppearanceResId"    # I

    .prologue
    .line 1552
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/lenovo/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1555
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1557
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private removeTabViewAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 755
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 756
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->requestLayout()V

    .line 757
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 797
    iget-object v3, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 798
    .local v2, "tabCount":I
    if-ge p1, v2, :cond_1

    iget-object v3, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 799
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 800
    iget-object v3, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, v1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 801
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 804
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .prologue
    .line 627
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 628
    invoke-direct {p0, v0}, Llenovo/design/widget/TabLayout;->updateTab(I)V

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method private updateTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 660
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/TabLayout$TabView;

    .line 661
    .local v0, "view":Llenovo/design/widget/TabLayout$TabView;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Llenovo/design/widget/TabLayout$TabView;->update()V

    .line 664
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 690
    iget v0, p0, Llenovo/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 692
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 697
    :goto_0
    return-void

    .line 694
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 695
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private updateTabViewsLayoutParams()V
    .locals 3

    .prologue
    .line 878
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 879
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2, v1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 880
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Llenovo/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 881
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Llenovo/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 338
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Llenovo/design/widget/TabLayout;->addTab(Llenovo/design/widget/TabLayout$Tab;Z)V

    .line 339
    return-void
.end method

.method public addTab(Llenovo/design/widget/TabLayout$Tab;I)V
    .locals 1
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    .line 349
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Llenovo/design/widget/TabLayout;->addTab(Llenovo/design/widget/TabLayout$Tab;IZ)V

    .line 350
    return-void
.end method

.method public addTab(Llenovo/design/widget/TabLayout$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 378
    # getter for: Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;
    invoke-static {p1}, Llenovo/design/widget/TabLayout$Tab;->access$000(Llenovo/design/widget/TabLayout$Tab;)Llenovo/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Llenovo/design/widget/TabLayout;->addTabView(Llenovo/design/widget/TabLayout$Tab;IZ)V

    .line 383
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/TabLayout;->configureTab(Llenovo/design/widget/TabLayout$Tab;I)V

    .line 384
    if-eqz p3, :cond_1

    .line 385
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->select()V

    .line 387
    :cond_1
    return-void
.end method

.method public addTab(Llenovo/design/widget/TabLayout$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "setSelected"    # Z

    .prologue
    .line 359
    # getter for: Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;
    invoke-static {p1}, Llenovo/design/widget/TabLayout$Tab;->access$000(Llenovo/design/widget/TabLayout$Tab;)Llenovo/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/TabLayout;->addTabView(Llenovo/design/widget/TabLayout$Tab;Z)V

    .line 364
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/TabLayout;->configureTab(Llenovo/design/widget/TabLayout$Tab;I)V

    .line 365
    if-eqz p2, :cond_1

    .line 366
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->select()V

    .line 368
    :cond_1
    return-void
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Llenovo/design/widget/TabLayout$Tab;
    .locals 1
    .param p1, "index"    # I
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Llenovo/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Llenovo/design/widget/TabLayout$Tab;
    .locals 1
    .annotation build Llenovo/annotation/NonNull;
    .end annotation

    .prologue
    .line 408
    new-instance v0, Llenovo/design/widget/TabLayout$Tab;

    invoke-direct {v0, p0}, Llenovo/design/widget/TabLayout$Tab;-><init>(Llenovo/design/widget/TabLayout;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    .line 707
    const/16 v7, 0x30

    invoke-direct {p0, v7}, Llenovo/design/widget/TabLayout;->dpToPx(I)I

    move-result v7

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getPaddingBottom()I

    move-result v8

    add-int v4, v7, v8

    .line 708
    .local v4, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 720
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 722
    iget v7, p0, Llenovo/design/widget/TabLayout;->mMode:I

    if-ne v7, v10, :cond_0

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getChildCount()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 725
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Llenovo/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v6

    .line 728
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-le v7, v6, :cond_0

    .line 731
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Llenovo/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 733
    .local v1, "childHeightMeasureSpec":I
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 734
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 740
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v6    # "width":I
    :cond_0
    iget v5, p0, Llenovo/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 741
    .local v5, "maxTabWidth":I
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v7

    const/16 v8, 0x38

    invoke-direct {p0, v8}, Llenovo/design/widget/TabLayout;->dpToPx(I)I

    move-result v8

    sub-int v3, v7, v8

    .line 742
    .local v3, "defaultTabMaxWidth":I
    if-eqz v5, :cond_1

    if-le v5, v3, :cond_2

    .line 744
    :cond_1
    move v5, v3

    .line 747
    :cond_2
    iget v7, p0, Llenovo/design/widget/TabLayout;->mTabMaxWidth:I

    if-eq v7, v5, :cond_3

    .line 749
    iput v5, p0, Llenovo/design/widget/TabLayout;->mTabMaxWidth:I

    .line 750
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 752
    :cond_3
    return-void

    .line 710
    .end local v3    # "defaultTabMaxWidth":I
    .end local v5    # "maxTabWidth":I
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 713
    goto :goto_0

    .line 715
    :sswitch_1
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 708
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeAllTabs()V
    .locals 3

    .prologue
    .line 481
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->removeAllViews()V

    .line 483
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Llenovo/design/widget/TabLayout$Tab;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llenovo/design/widget/TabLayout$Tab;

    .line 485
    .local v1, "tab":Llenovo/design/widget/TabLayout$Tab;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Llenovo/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 486
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 489
    .end local v1    # "tab":Llenovo/design/widget/TabLayout$Tab;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    .line 490
    return-void
.end method

.method public removeTab(Llenovo/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 444
    # getter for: Llenovo/design/widget/TabLayout$Tab;->mParent:Llenovo/design/widget/TabLayout;
    invoke-static {p1}, Llenovo/design/widget/TabLayout$Tab;->access$000(Llenovo/design/widget/TabLayout$Tab;)Llenovo/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout;->removeTabAt(I)V

    .line 449
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 458
    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_1

    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    invoke-virtual {v4}, Llenovo/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    .line 459
    .local v3, "selectedTabPosition":I
    :goto_0
    invoke-direct {p0, p1}, Llenovo/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 461
    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/TabLayout$Tab;

    .line 462
    .local v2, "removedTab":Llenovo/design/widget/TabLayout$Tab;
    if-eqz v2, :cond_0

    .line 463
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Llenovo/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 466
    :cond_0
    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 467
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 468
    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/TabLayout$Tab;

    invoke-virtual {v4, v0}, Llenovo/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Llenovo/design/widget/TabLayout$Tab;
    .end local v3    # "selectedTabPosition":I
    :cond_1
    move v3, v5

    .line 458
    goto :goto_0

    .line 471
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Llenovo/design/widget/TabLayout$Tab;
    .restart local v3    # "selectedTabPosition":I
    :cond_2
    if-ne v3, p1, :cond_3

    .line 472
    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v4}, Llenovo/design/widget/TabLayout;->selectTab(Llenovo/design/widget/TabLayout$Tab;)V

    .line 474
    :cond_3
    return-void

    .line 472
    :cond_4
    iget-object v4, p0, Llenovo/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/TabLayout$Tab;

    goto :goto_2
.end method

.method selectTab(Llenovo/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 807
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Llenovo/design/widget/TabLayout;->selectTab(Llenovo/design/widget/TabLayout$Tab;Z)V

    .line 808
    return-void
.end method

.method selectTab(Llenovo/design/widget/TabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .prologue
    const/4 v1, -0x1

    .line 811
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    if-ne v2, p1, :cond_2

    .line 812
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    .line 813
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Llenovo/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Llenovo/design/widget/TabLayout$Tab;)V

    .line 816
    :cond_0
    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Llenovo/design/widget/TabLayout;->animateToTab(I)V

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 819
    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 820
    .local v0, "newPosition":I
    :goto_1
    invoke-direct {p0, v0}, Llenovo/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 821
    if-eqz p2, :cond_4

    .line 822
    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_3

    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Llenovo/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v1, :cond_7

    :cond_3
    if-eq v0, v1, :cond_7

    .line 825
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Llenovo/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 830
    :cond_4
    :goto_2
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_5

    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_5

    .line 831
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Llenovo/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Llenovo/design/widget/TabLayout$Tab;)V

    .line 833
    :cond_5
    iput-object p1, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    .line 834
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_1

    .line 835
    iget-object v1, p0, Llenovo/design/widget/TabLayout;->mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Llenovo/design/widget/TabLayout;->mSelectedTab:Llenovo/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Llenovo/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Llenovo/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .end local v0    # "newPosition":I
    :cond_6
    move v0, v1

    .line 819
    goto :goto_1

    .line 827
    .restart local v0    # "newPosition":I
    :cond_7
    invoke-direct {p0, v0}, Llenovo/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setOnTabSelectedListener(Llenovo/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    .prologue
    .line 396
    iput-object p1, p0, Llenovo/design/widget/TabLayout;->mOnTabSelectedListener:Llenovo/design/widget/TabLayout$OnTabSelectedListener;

    .line 397
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mIndicatorAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mIndicatorAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 319
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Llenovo/design/widget/TabLayout;->scrollTo(II)V

    .line 322
    if-eqz p3, :cond_0

    .line 323
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Llenovo/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Llenovo/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 287
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 288
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 296
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabStrip:Llenovo/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 297
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 528
    iget v0, p0, Llenovo/design/widget/TabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    .line 529
    iput p1, p0, Llenovo/design/widget/TabLayout;->mTabGravity:I

    .line 530
    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->applyModeAndGravity()V

    .line 532
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 506
    iget v0, p0, Llenovo/design/widget/TabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 507
    iput p1, p0, Llenovo/design/widget/TabLayout;->mMode:I

    .line 508
    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->applyModeAndGravity()V

    .line 510
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .prologue
    .line 566
    invoke-static {p1, p2}, Llenovo/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 567
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 548
    iget-object v0, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 549
    iput-object p1, p0, Llenovo/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 550
    invoke-direct {p0}, Llenovo/design/widget/TabLayout;->updateAllTabs()V

    .line 552
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Llenovo/view/PagerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Llenovo/view/PagerAdapter;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 620
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->removeAllTabs()V

    .line 621
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 622
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->newTab()Llenovo/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p1, v1}, Llenovo/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Llenovo/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Llenovo/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Llenovo/design/widget/TabLayout;->addTab(Llenovo/design/widget/TabLayout$Tab;)V

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_0
    return-void
.end method

.method public setupWithViewPager(Llenovo/view/ViewPager;)V
    .locals 4
    .param p1, "viewPager"    # Llenovo/view/ViewPager;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 587
    invoke-virtual {p1}, Llenovo/view/ViewPager;->getAdapter()Llenovo/view/PagerAdapter;

    move-result-object v0

    .line 588
    .local v0, "adapter":Llenovo/view/PagerAdapter;
    if-nez v0, :cond_0

    .line 589
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :cond_0
    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout;->setTabsFromPagerAdapter(Llenovo/view/PagerAdapter;)V

    .line 596
    new-instance v2, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v2, p0}, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Llenovo/design/widget/TabLayout;)V

    invoke-virtual {p1, v2}, Llenovo/view/ViewPager;->addOnPageChangeListener(Llenovo/view/ViewPager$OnPageChangeListener;)V

    .line 599
    new-instance v2, Llenovo/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v2, p1}, Llenovo/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Llenovo/view/ViewPager;)V

    invoke-virtual {p0, v2}, Llenovo/design/widget/TabLayout;->setOnTabSelectedListener(Llenovo/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 602
    invoke-virtual {v0}, Llenovo/view/PagerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 603
    invoke-virtual {p1}, Llenovo/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 604
    .local v1, "curItem":I
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 605
    invoke-virtual {p0, v1}, Llenovo/design/widget/TabLayout;->getTabAt(I)Llenovo/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Llenovo/design/widget/TabLayout;->selectTab(Llenovo/design/widget/TabLayout$Tab;)V

    .line 608
    .end local v1    # "curItem":I
    :cond_1
    return-void
.end method
