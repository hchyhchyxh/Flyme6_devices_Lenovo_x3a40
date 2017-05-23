.class public Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams$CollapseMode;
    }
.end annotation


# static fields
.field public static final COLLAPSE_MODE_OFF:I = 0x0

.field public static final COLLAPSE_MODE_PARALLAX:I = 0x2

.field public static final COLLAPSE_MODE_PIN:I = 0x1

.field private static final DEFAULT_PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field mCollapseMode:I

.field mParallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 787
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 770
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 788
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 791
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 770
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 792
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 773
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 769
    iput v2, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 770
    iput v3, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 775
    sget-object v1, Lcom/lenovo/internal/R$styleable;->CollapsingAppBarLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 777
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 780
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->setParallaxMultiplier(F)V

    .line 783
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 784
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 795
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 770
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 796
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 799
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 770
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 800
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 803
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 770
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 804
    return-void
.end method


# virtual methods
.method public getCollapseMode()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    return v0
.end method

.method public getParallaxMultiplier()F
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return v0
.end method

.method public setCollapseMode(I)V
    .locals 0
    .param p1, "collapseMode"    # I

    .prologue
    .line 813
    iput p1, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    .line 814
    return-void
.end method

.method public setParallaxMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 837
    iput p1, p0, Llenovo/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    .line 838
    return-void
.end method
