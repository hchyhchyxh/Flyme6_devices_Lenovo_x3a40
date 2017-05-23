.class public Llenovo/design/widget/FloatingActionButton$Behavior;
.super Llenovo/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llenovo/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Llenovo/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final SNACKBAR_BEHAVIOR_ENABLED:Z


# instance fields
.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Llenovo/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method private getFabTranslationYForSnackbar(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;)F
    .locals 7
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Llenovo/design/widget/FloatingActionButton;

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 408
    .local v2, "minOffset":F
    invoke-virtual {p1, p2}, Llenovo/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 409
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "z":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 411
    .local v3, "view":Landroid/view/View;
    instance-of v5, v3, Llenovo/design/widget/Snackbar$SnackbarLayout;

    if-eqz v5, :cond_0

    invoke-virtual {p1, p2, v3}, Llenovo/design/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 412
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return v2
.end method

.method private offsetIfNeeded(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;)V
    .locals 7
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Llenovo/design/widget/FloatingActionButton;

    .prologue
    .line 445
    # getter for: Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;
    invoke-static {p2}, Llenovo/design/widget/FloatingActionButton;->access$000(Llenovo/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v3

    .line 447
    .local v3, "padding":Landroid/graphics/Rect;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-lez v4, :cond_2

    .line 448
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 451
    .local v0, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v2, 0x0

    .local v2, "offsetTB":I
    const/4 v1, 0x0

    .line 453
    .local v1, "offsetLR":I
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->getRight()I

    move-result v4

    invoke-virtual {p1}, Llenovo/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    .line 455
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 460
    :cond_0
    :goto_0
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Llenovo/design/widget/CoordinatorLayout;->getBottom()I

    move-result v5

    iget v6, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    .line 462
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 468
    :cond_1
    :goto_1
    invoke-virtual {p2, v2}, Llenovo/design/widget/FloatingActionButton;->offsetTopAndBottom(I)V

    .line 469
    invoke-virtual {p2, v1}, Llenovo/design/widget/FloatingActionButton;->offsetLeftAndRight(I)V

    .line 471
    .end local v0    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .end local v1    # "offsetLR":I
    .end local v2    # "offsetTB":I
    :cond_2
    return-void

    .line 456
    .restart local v0    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v1    # "offsetLR":I
    .restart local v2    # "offsetTB":I
    :cond_3
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->getLeft()I

    move-result v4

    iget v5, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v4, v5, :cond_0

    .line 458
    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v4

    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v5, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v4, v5, :cond_1

    .line 465
    iget v4, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v4

    goto :goto_1
.end method

.method private updateFabTranslationForSnackbar(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Llenovo/design/widget/FloatingActionButton;
    .param p3, "snackbar"    # Landroid/view/View;

    .prologue
    .line 397
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/FloatingActionButton$Behavior;->getFabTranslationYForSnackbar(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;)F

    move-result v0

    .line 402
    .local v0, "translationY":F
    invoke-virtual {p2, v0}, Llenovo/design/widget/FloatingActionButton;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateFabVisibility(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Llenovo/design/widget/FloatingActionButton;)Z
    .locals 4
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Llenovo/design/widget/AppBarLayout;
    .param p3, "child"    # Llenovo/design/widget/FloatingActionButton;

    .prologue
    .line 369
    invoke-virtual {p3}, Llenovo/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 371
    .local v0, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v2

    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 374
    const/4 v2, 0x0

    .line 392
    :goto_0
    return v2

    .line 377
    :cond_0
    iget-object v2, p0, Llenovo/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 378
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Llenovo/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 382
    :cond_1
    iget-object v1, p0, Llenovo/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 383
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {p1, p2, v1}, Llenovo/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 385
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Llenovo/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 387
    invoke-virtual {p3}, Llenovo/design/widget/FloatingActionButton;->hide()V

    .line 392
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p3}, Llenovo/design/widget/FloatingActionButton;->show()V

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;

    .prologue
    .line 322
    check-cast p2, Llenovo/design/widget/FloatingActionButton;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/FloatingActionButton$Behavior;->layoutDependsOn(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 333
    sget-boolean v0, Llenovo/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    if-eqz v0, :cond_0

    instance-of v0, p3, Llenovo/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;

    .prologue
    .line 322
    check-cast p2, Llenovo/design/widget/FloatingActionButton;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/FloatingActionButton$Behavior;->onDependentViewChanged(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 339
    instance-of v0, p3, Llenovo/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_1

    .line 340
    invoke-direct {p0, p1, p2, p3}, Llenovo/design/widget/FloatingActionButton$Behavior;->updateFabTranslationForSnackbar(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)V

    .line 346
    .end local p3    # "dependency":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 341
    .restart local p3    # "dependency":Landroid/view/View;
    :cond_1
    instance-of v0, p3, Llenovo/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 344
    check-cast p3, Llenovo/design/widget/AppBarLayout;

    .end local p3    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, p3, p2}, Llenovo/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Llenovo/design/widget/FloatingActionButton;)Z

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewRemoved(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;

    .prologue
    .line 322
    check-cast p2, Llenovo/design/widget/FloatingActionButton;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/FloatingActionButton$Behavior;->onDependentViewRemoved(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)V

    return-void
.end method

.method public onDependentViewRemoved(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 352
    instance-of v0, p3, Llenovo/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p2}, Llenovo/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 365
    :cond_0
    return-void
.end method

.method public bridge synthetic onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I

    .prologue
    .line 322
    check-cast p2, Llenovo/design/widget/FloatingActionButton;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;I)Z
    .locals 5
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/FloatingActionButton;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 424
    invoke-virtual {p1, p2}, Llenovo/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 425
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 426
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 427
    .local v2, "dependency":Landroid/view/View;
    instance-of v4, v2, Llenovo/design/widget/AppBarLayout;

    if-eqz v4, :cond_1

    check-cast v2, Llenovo/design/widget/AppBarLayout;

    .end local v2    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, v2, p2}, Llenovo/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;Llenovo/design/widget/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    :cond_0
    invoke-virtual {p1, p2, p3}, Llenovo/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 435
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/FloatingActionButton$Behavior;->offsetIfNeeded(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/FloatingActionButton;)V

    .line 436
    const/4 v4, 0x1

    return v4

    .line 425
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
