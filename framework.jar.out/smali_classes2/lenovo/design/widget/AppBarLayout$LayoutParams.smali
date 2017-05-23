.class public Llenovo/design/widget/AppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/AppBarLayout$LayoutParams$ScrollFlags;
    }
.end annotation


# static fields
.field static final FLAG_QUICK_RETURN:I = 0x5

.field public static final SCROLL_FLAG_ENTER_ALWAYS:I = 0x4

.field public static final SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I = 0x8

.field public static final SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I = 0x2

.field public static final SCROLL_FLAG_SCROLL:I = 0x1


# instance fields
.field mScrollFlags:I

.field mScrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 547
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 548
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .prologue
    .line 551
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 552
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 534
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 530
    iput v4, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 535
    sget-object v2, Lcom/lenovo/internal/R$styleable;->AppBarLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 536
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 537
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 540
    .local v1, "resId":I
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 543
    .end local v1    # "resId":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 544
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 556
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 560
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 563
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 564
    return-void
.end method

.method public constructor <init>(Llenovo/design/widget/AppBarLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Llenovo/design/widget/AppBarLayout$LayoutParams;

    .prologue
    .line 567
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 568
    iget v0, p1, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    iput v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 569
    iget-object v0, p1, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 570
    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public setScrollFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 584
    iput p1, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 585
    return-void
.end method

.method public setScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 609
    iput-object p1, p0, Llenovo/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 610
    return-void
.end method
